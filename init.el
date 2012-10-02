;; -*- lexical-binding: t -*-
;;; init.el --- Show Elisp repos recently created in Github

;; Copyright (C) 2012  Rolando Pereira

;; Author: Rolando Pereira <rolando_pereira@sapo.pt>
;; Keywords: elnode, github, atom, feed

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; This file uses elnode and heroku to fetch the github page showing
;; the newest elisp repos and displays them as a Atom feed.
;;
;; The page used to find theses repos is:
;; "https://github.com/languages/Emacs%20Lisp/created"
;;
;; You can find this code running in Heroku in the following URL:
;; "http://github-elisp.herokuapp.com"
;;
;; If you want to read this feed in Gwene.org, its name is
;; "gwene.com.herokuapp.github-elisp".

;;; Code:


(add-to-list 'load-path
             (file-name-directory (or load-file-name
                                      (buffer-file-name (current-buffer)))))

(require 'elnode)
(require 'atom)
(require 'string-utils)
(require 'sgml-mode)

(defvar show-information-regarding-forks nil
  "If T then add to the title of each feed the repository that was forked to create the new repository.

Here's an example using a fork of the Melpa repo to show how this
variable affects the title of the feeds:

* Without fork information the title of the feed:
  rolando2424: melpa

* With fork information it would be:
  rolando2424: melpa (forked from milkypostman/melpa)")


;;; Functions used to extract the information found in "https://github.com/languages/Emacs%20Lisp/created"
(defun find-html-structures ()
  (goto-char (point-min))
  (loop with html-structures = '()
	while (re-search-forward "<li class=\"public" nil t)
	do (let ((begin-point (point))
		 end-point)
	     (sgml-skip-tag-forward 1)
	     (setq end-point (point))
	     (push (buffer-substring-no-properties begin-point end-point)
		   html-structures))
	finally return (reverse html-structures)))

(defun find-repo (html-structure)
  (with-temp-buffer
    (insert html-structure)
    (goto-char (point-min))
    (re-search-forward "<span class=\"mega-icon.*\n.*<a.*?>\\(.*?\\)</a>" nil t)
    (match-string 1)))
  
(defun find-owner (html-structure)
  (with-temp-buffer
    (insert html-structure)
    (goto-char (point-min))
    (re-search-forward "<span class=\"mega-icon.*\n.*<a.*?\"/\\(.*?\\)/" nil t)
    (match-string 1)))

(defun find-updated-date (html-structure)
  (with-temp-buffer
    (insert html-structure)
    (goto-char (point-min))
    (re-search-forward "datetime=\"\\(.*?\\)\"" nil t)
    (match-string 1)))

(defun find-description (html-structure)
  (with-temp-buffer
    (insert html-structure)
    (goto-char (point-min))
    (condition-case nil
	(let (begin-region
	      end-region)
	  (re-search-forward "<p class=\"description\">" nil)
	  (setq begin-region (point))
	  (re-search-forward "</p>" nil t)
	  (setq end-region (match-beginning 0))
	  (string-utils-trim-whitespace (buffer-substring begin-region end-region)))
      (search-failed nil))))

(defun find-forked-repo (html-structure)
  (with-temp-buffer
    (insert html-structure)
    (goto-char (point-min))
    (condition-case nil
	(let (begin-region
	      end-region)
	  (re-search-forward "<p class=\"fork-flag\">.*?<a href=\"/\\(.*?\\)\"" nil)
	  (match-string 1))
      (search-failed nil))))


;; (defun find-repos ()
;;   "Return the name of the repositories found in the current buffer"
;;   (save-excursion
;;     (goto-char (point-min))
;;     (loop while (re-search-forward "<span class=\"mega-icon.*\n.*<a.*?>\\(.*?\\)</a>" nil t)
;; 	  collect (match-string-no-properties 1))))

;; (defun find-owners ()
;;   "Return the owners of the repositories found in the current buffer"
;;   (save-excursion
;;     (goto-char (point-min))
;;     (loop while (re-search-forward "<span class=\"mega-icon.*\n.*<a.*?\"/\\(.*?\\)/" nil t)
;; 	  collect (match-string-no-properties 1))))

;; (defun find-dates ()
;;   "Return the creation dates of the repositories found in the current buffer"
;;   (save-excursion
;;     (goto-char (point-min))
;;     (loop while (re-search-forward "datetime=\"\\(.*?\\)\"" nil t)
;; 	  collect (match-string-no-properties 1))))

;; (defun teste ()
;;   (goto-char (point-min))
;;   (let ((begin-point (point))
;; 	end-point)
;;     (re-search-forward "<li class=\"simple" nil t)
;;     (setq end-point (point))
;;     (narrow-to-region begin-point end-point)))






;; (defun find-descs ()
;;   "Return the description of the repositories found in the current buffer"
;;   (save-excursion
;;     (goto-char (point-min))
;;     (loop while (re-search-forward "<td .*class=\"desc\">\\(.*?\\)</td>" nil t)
;;           collect (match-string 1))))

;; (defun find-forked-repo (owner repo)
;;   "Check if the REPO created by OWNER was forked from another repo and return it.

;; If no repository was forked to create REPO, then return NIL."
;;   (let ((repo-url (concat "http://github.com/" owner "/" repo))
;;          return-value)
;;     (with-current-buffer (url-retrieve-synchronously repo-url)
;;       (goto-char (point-min))
;;       (when (re-search-forward "<span class=\"text\">forked from <.*?>\\(.*?\\)</a>" nil t)
;;         (setq return-value (match-string 1)))
;;       (kill-buffer))
;;     return-value))
    



;;; Helper functions
(defun convert-github-time-to-internal-time (gh-time)
  "Convert a string of type \"DD MON HH:YY\" into the internal representation used by Emacs"
  (let ((current-year (string-to-number (format-time-string "%Y"))))
    (apply 'encode-time
           (multiple-value-bind (sec min hour day month) (parse-time-string gh-time)
                                (list sec min hour day month current-year)))))


;;; Elnode handler
(defun github-fetcher-handler (httpcon)
  (elnode-http-start httpcon "200" '("Content-type" . "application/atom+xml")
                     `("Server" . ,(concat "GNU Emacs " emacs-version)))

  (let* ((my-atom-feed (atom-create "New GitHub Emacs Lisp Repos" "http://github-elisp.herokuapp.com"))
         (repo-info (with-current-buffer (url-retrieve-synchronously "https://github.com/languages/Emacs%20Lisp/created")
                      ;; Merge the information found in the webpage
                      (prog1
			  (loop for html-structure in (find-html-structures)
				collect (list (find-owner html-structure)
					      (find-repo html-structure)
					      (find-updated-date html-structure)
					      (find-description html-structure)
					      (find-forked-repo html-structure)))
					 
                        ;; (loop for repo in (find-repos)
                        ;;       for owner in (find-owners)
                        ;;       for date in (find-dates)
                        ;;       ;; for descs in (find-descs)
                        ;;       collect (list owner repo date ;; descs
                        ;;                     (when show-information-regarding-forks
                        ;;                       (find-forked-repo owner repo))))
                        (kill-buffer)))))
    (dolist (repo repo-info)
      (atom-add-text-entry my-atom-feed
                           (if (fifth repo)
                               (concat (first repo) ": " (second repo) " (forked from " (fifth repo) ")")
                             (concat (first repo) ": " (second repo)))
                           (concat "http://github.com/" (first repo) "/" (second repo))
                           (fourth repo)
			   (atom-parse-time (third repo))))


    (elnode-http-return httpcon
                        (with-temp-buffer
                          (atom-print my-atom-feed)
                          (buffer-substring-no-properties (point-min) (point-max))))))



(elnode-start 'github-fetcher-handler (string-to-number (or (getenv "PORT") "8080")) "0.0.0.0")

(while t
  (accept-process-output nil 1))

;;; init.el ends here
