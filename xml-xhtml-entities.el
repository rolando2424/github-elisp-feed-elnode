;;; xml-xhtml-entities.el --- The XHTML entity set

;; Copyright (C) 2011  Frédéric Perrin

;; Author: Frédéric Perrin <frederic.perrin@resel.fr>
;; Keywords: languages, data, hypermedia

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

;; This is the set of XHTML entities, as defined in
;; <http://www.w3.org/TR/xhtml1/dtds.html#h-A2>. The document is
;; provided with the following notice:

;; Portions (C) International Organization for Standardization 1986
;; Permission to copy in any form is granted for use with
;; conforming SGML systems and applications as defined in
;; ISO 8879, provided this notice is included in all copies.

;;; Code:

(defconst xml-xhtml-entities
;;; Latin-1 characters
  '(("nbsp"	. " ") ;; no-break space = non-breaking space, U+00A0 ISOnum
    ("iexcl"	. "¡") ;; inverted exclamation mark, U+00A1 ISOnum
    ("cent"	. "¢") ;; cent sign, U+00A2 ISOnum
    ("pound"	. "£") ;; pound sign, U+00A3 ISOnum
    ("curren"	. "¤") ;; currency sign, U+00A4 ISOnum
    ("yen"	. "¥") ;; yen sign = yuan sign, U+00A5 ISOnum
    ("brvbar"	. "¦") ;; broken bar = broken vertical bar, U+00A6 ISOnum
    ("sect"	. "§") ;; section sign, U+00A7 ISOnum
    ("uml"	. "¨") ;; diaeresis = spacing diaeresis, U+00A8 ISOdia
    ("copy"	. "©") ;; copyright sign, U+00A9 ISOnum
    ("ordf"	. "ª") ;; feminine ordinal indicator, U+00AA ISOnum
    ("laquo"	. "«") ;; left-pointing double angle quotation mark = left
		       ;; pointing guillemet, U+00AB ISOnum
    ("not"	. "¬") ;; not sign = angled dash, U+00AC ISOnum
    ("shy"	. "­") ;; soft hyphen = discretionary hyphen, U+00AD ISOnum
    ("reg"	. "®") ;; registered sign = registered trade mark sign, U+00AE
		       ;; ISOnum
    ("macr"	. "¯") ;; macron = spacing macron = overline = APL overbar,
		       ;; U+00AF ISOdia
    ("deg"	. "°") ;; degree sign, U+00B0 ISOnum
    ("plusmn"	. "±") ;; plus-minus sign = plus-or-minus sign, U+00B1 ISOnum
    ("sup2"	. "²") ;; superscript two = superscript digit two = squared,
		       ;; U+00B2 ISOnum
    ("sup3"	. "³") ;; superscript three = superscript digit three = cubed,
		       ;; U+00B3 ISOnum
    ("acute"	. "´") ;; acute accent = spacing acute, U+00B4 ISOdia
    ("micro"	. "µ") ;; micro sign, U+00B5 ISOnum
    ("para"	. "¶") ;; pilcrow sign = paragraph sign, U+00B6 ISOnum
    ("middot"	. "·") ;; middle dot = Georgian comma = Greek middle dot,
		       ;; U+00B7 ISOnum
    ("cedil"	. "¸") ;; cedilla = spacing cedilla, U+00B8 ISOdia
    ("sup1"	. "¹") ;; superscript one = superscript digit one, U+00B9 ISOnum
    ("ordm"	. "º") ;; masculine ordinal indicator, U+00BA ISOnum
    ("raquo"	. "»") ;; right-pointing double angle quotation mark = right
		       ;; pointing guillemet, U+00BB ISOnum
    ("frac14"	. "¼") ;; vulgar fraction one quarter = fraction one quarter,
		       ;; U+00BC ISOnum
    ("frac12"	. "½") ;; vulgar fraction one half = fraction one half, U+00BD
		       ;; ISOnum
    ("frac34"	. "¾") ;; vulgar fraction three quarters = fraction three
		       ;; quarters, U+00BE ISOnum
    ("iquest"	. "¿") ;; inverted question mark = turned question mark,
		       ;; U+00BF ISOnum
    ("Agrave"	. "À") ;; latin capital letter A with grave = latin capital
		       ;; letter A grave, U+00C0 ISOlat1
    ("Aacute"	. "Á") ;; latin capital letter A with acute, U+00C1 ISOlat1
    ("Acirc"	. "Â") ;; latin capital letter A with circumflex, U+00C2 ISOlat1
    ("Atilde"	. "Ã") ;; latin capital letter A with tilde, U+00C3 ISOlat1
    ("Auml"	. "Ä") ;; latin capital letter A with diaeresis, U+00C4 ISOlat1
    ("Aring"	. "Å") ;; latin capital letter A with ring above = latin
		       ;; capital letter A ring, U+00C5 ISOlat1
    ("AElig"	. "Æ") ;; latin capital letter AE = latin capital ligature AE,
		       ;; U+00C6 ISOlat1
    ("Ccedil"	. "Ç") ;; latin capital letter C with cedilla, U+00C7 ISOlat1
    ("Egrave"	. "È") ;; latin capital letter E with grave, U+00C8 ISOlat1
    ("Eacute"	. "É") ;; latin capital letter E with acute, U+00C9 ISOlat1
    ("Ecirc"	. "Ê") ;; latin capital letter E with circumflex, U+00CA ISOlat1
    ("Euml"	. "Ë") ;; latin capital letter E with diaeresis, U+00CB ISOlat1
    ("Igrave"	. "Ì") ;; latin capital letter I with grave, U+00CC ISOlat1
    ("Iacute"	. "Í") ;; latin capital letter I with acute, U+00CD ISOlat1
    ("Icirc"	. "Î") ;; latin capital letter I with circumflex, U+00CE ISOlat1
    ("Iuml"	. "Ï") ;; latin capital letter I with diaeresis, U+00CF ISOlat1
    ("ETH"	. "Ð") ;; latin capital letter ETH, U+00D0 ISOlat1
    ("Ntilde"	. "Ñ") ;; latin capital letter N with tilde, U+00D1 ISOlat1
    ("Ograve"	. "Ò") ;; latin capital letter O with grave, U+00D2 ISOlat1
    ("Oacute"	. "Ó") ;; latin capital letter O with acute, U+00D3 ISOlat1
    ("Ocirc"	. "Ô") ;; latin capital letter O with circumflex, U+00D4 ISOlat1
    ("Otilde"	. "Õ") ;; latin capital letter O with tilde, U+00D5 ISOlat1
    ("Ouml"	. "Ö") ;; latin capital letter O with diaeresis, U+00D6 ISOlat1
    ("times"	. "×") ;; multiplication sign, U+00D7 ISOnum
    ("Oslash"	. "Ø") ;; latin capital letter O with stroke = latin capital
		       ;; letter O slash, U+00D8 ISOlat1
    ("Ugrave"	. "Ù") ;; latin capital letter U with grave, U+00D9 ISOlat1
    ("Uacute"	. "Ú") ;; latin capital letter U with acute, U+00DA ISOlat1
    ("Ucirc"	. "Û") ;; latin capital letter U with circumflex, U+00DB ISOlat1
    ("Uuml"	. "Ü") ;; latin capital letter U with diaeresis, U+00DC ISOlat1
    ("Yacute"	. "Ý") ;; latin capital letter Y with acute, U+00DD ISOlat1
    ("THORN"	. "Þ") ;; latin capital letter THORN, U+00DE ISOlat1
    ("szlig"	. "ß") ;; latin small letter sharp s = ess-zed, U+00DF ISOlat1
    ("agrave"	. "à") ;; latin small letter a with grave = latin small letter
		       ;; a grave, U+00E0 ISOlat1
    ("aacute"	. "á") ;; latin small letter a with acute, U+00E1 ISOlat1
    ("acirc"	. "â") ;; latin small letter a with circumflex, U+00E2 ISOlat1
    ("atilde"	. "ã") ;; latin small letter a with tilde, U+00E3 ISOlat1
    ("auml"	. "ä") ;; latin small letter a with diaeresis, U+00E4 ISOlat1
    ("aring"	. "å") ;; latin small letter a with ring above = latin small
		       ;; letter a ring, U+00E5 ISOlat1
    ("aelig"	. "æ") ;; latin small letter ae = latin small ligature ae,
		       ;; U+00E6 ISOlat1
    ("ccedil"	. "ç") ;; latin small letter c with cedilla, U+00E7 ISOlat1
    ("egrave"	. "è") ;; latin small letter e with grave, U+00E8 ISOlat1
    ("eacute"	. "é") ;; latin small letter e with acute, U+00E9 ISOlat1
    ("ecirc"	. "ê") ;; latin small letter e with circumflex, U+00EA ISOlat1
    ("euml"	. "ë") ;; latin small letter e with diaeresis, U+00EB ISOlat1
    ("igrave"	. "ì") ;; latin small letter i with grave, U+00EC ISOlat1
    ("iacute"	. "í") ;; latin small letter i with acute, U+00ED ISOlat1
    ("icirc"	. "î") ;; latin small letter i with circumflex, U+00EE ISOlat1
    ("iuml"	. "ï") ;; latin small letter i with diaeresis, U+00EF ISOlat1
    ("eth"	. "ð") ;; latin small letter eth, U+00F0 ISOlat1
    ("ntilde"	. "ñ") ;; latin small letter n with tilde, U+00F1 ISOlat1
    ("ograve"	. "ò") ;; latin small letter o with grave, U+00F2 ISOlat1
    ("oacute"	. "ó") ;; latin small letter o with acute, U+00F3 ISOlat1
    ("ocirc"	. "ô") ;; latin small letter o with circumflex, U+00F4 ISOlat1
    ("otilde"	. "õ") ;; latin small letter o with tilde, U+00F5 ISOlat1
    ("ouml"	. "ö") ;; latin small letter o with diaeresis, U+00F6 ISOlat1
    ("divide"	. "÷") ;; division sign, U+00F7 ISOnum
    ("oslash"	. "ø") ;; latin small letter o with stroke, = latin small
		       ;; letter o slash, U+00F8 ISOlat1
    ("ugrave"	. "ù") ;; latin small letter u with grave, U+00F9 ISOlat1
    ("uacute"	. "ú") ;; latin small letter u with acute, U+00FA ISOlat1
    ("ucirc"	. "û") ;; latin small letter u with circumflex, U+00FB ISOlat1
    ("uuml"	. "ü") ;; latin small letter u with diaeresis, U+00FC ISOlat1
    ("yacute"	. "ý") ;; latin small letter y with acute, U+00FD ISOlat1
    ("thorn"	. "þ") ;; latin small letter thorn, U+00FE ISOlat1
    ("yuml"	. "ÿ") ;; latin small letter y with diaeresis, U+00FF ISOlat1

;;; Special characters for XHTML

    ;; C0 Controls and Basic Latin
    ("quot"	. "\"") ;; quotation mark, U+0022 ISOnum
    ("amp"	. "&")  ;; ampersand, U+0026 ISOnum
    ("lt"	. "<")  ;; less-than sign, U+003C ISOnum
    ("gt"	. ">")  ;; greater-than sign, U+003E ISOnum
    ("apos"	. "'")  ;; apostrophe = APL quote, U+0027 ISOnum

    ;; Latin Extended-A
    ("OElig"	. "Œ") ;; latin capital ligature OE, U+0152 ISOlat2
    ("oelig"	. "œ") ;; latin small ligature oe, U+0153 ISOlat2
                       ;; ligature is a misnomer, this is a separate character
                       ;; in some languages
    ("Scaron"	. "Š") ;; latin capital letter S with caron, U+0160 ISOlat2
    ("scaron"	. "š") ;; latin small letter s with caron, U+0161 ISOlat2
    ("Yuml"	. "Ÿ") ;; latin capital letter Y with diaeresis, U+0178 ISOlat2

    ;; Spacing Modifier Letters
    ("circ"	. "ˆ") ;;  modifier letter circumflex accent, U+02C6 ISOpub
    ("tilde"	. "˜") ;;  small tilde, U+02DC ISOdia

    ;; General Punctuation
    ("ensp"	. " ") ;; en space, U+2002 ISOpub
    ("emsp"	. " ") ;; em space, U+2003 ISOpub
    ("thinsp"	. " ") ;; thin space, U+2009 ISOpub
    ("zwnj"	. "‌") ;; zero width non-joiner, U+200C NEW RFC 2070
    ("zwj"	. "‍") ;; zero width joiner, U+200D NEW RFC 2070
    ("lrm"	. "‎") ;; left-to-right mark, U+200E NEW RFC 2070
    ("rlm"	. "‏") ;; right-to-left mark, U+200F NEW RFC 2070
    ("ndash"	. "–") ;; en dash, U+2013 ISOpub
    ("mdash"	. "—") ;; em dash, U+2014 ISOpub
    ("lsquo"	. "‘") ;; left single quotation mark, U+2018 ISOnum
    ("rsquo"	. "’") ;; right single quotation mark, U+2019 ISOnum
    ("sbquo"	. "‚") ;; single low-9 quotation mark, U+201A NEW
    ("ldquo"	. "“") ;; left double quotation mark, U+201C ISOnum
    ("rdquo"	. "”") ;; right double quotation mark, U+201D ISOnum
    ("bdquo"	. "„") ;; double low-9 quotation mark, U+201E NEW
    ("dagger"	. "†") ;; dagger, U+2020 ISOpub
    ("Dagger"	. "‡") ;; double dagger, U+2021 ISOpub
    ("permil"	. "‰") ;; per mille sign, U+2030 ISOtech
    ("lsaquo"	. "‹") ;; single left-pointing angle quotation mark, U+2039
		       ;; ISO proposed
                       ;; lsaquo is proposed but not yet ISO standardized
    ("rsaquo"	. "›") ;; single right-pointing angle quotation mark, U+203A
		       ;; ISO proposed
                       ;; rsaquo is proposed but not yet ISO standardized
    ;; Currency Symbols
    ("euro"	. "€") ;;  euro sign, U+20AC NEW

;;; Mathematical, Greek and Symbolic characters for XHTML 

    ;; Latin Extended-B
    ("fnof"	. "ƒ") ;; latin small letter f with hook = function = florin,
		       ;; U+0192 ISOtech

    ;; Greek
    ("Alpha"	. "Α") ;; greek capital letter alpha, U+0391
    ("Beta"	. "Β") ;; greek capital letter beta, U+0392
    ("Gamma"	. "Γ") ;; greek capital letter gamma, U+0393 ISOgrk3
    ("Delta"	. "Δ") ;; greek capital letter delta, U+0394 ISOgrk3
    ("Epsilon"	. "Ε") ;; greek capital letter epsilon, U+0395
    ("Zeta"	. "Ζ") ;; greek capital letter zeta, U+0396
    ("Eta"	. "Η") ;; greek capital letter eta, U+0397
    ("Theta"	. "Θ") ;; greek capital letter theta, U+0398 ISOgrk3
    ("Iota"	. "Ι") ;; greek capital letter iota, U+0399
    ("Kappa"	. "Κ") ;; greek capital letter kappa, U+039A
    ("Lambda"	. "Λ") ;; greek capital letter lamda, U+039B ISOgrk3
    ("Mu"	. "Μ") ;; greek capital letter mu, U+039C
    ("Nu"	. "Ν") ;; greek capital letter nu, U+039D
    ("Xi"	. "Ξ") ;; greek capital letter xi, U+039E ISOgrk3
    ("Omicron"	. "Ο") ;; greek capital letter omicron, U+039F
    ("Pi"	. "Π") ;; greek capital letter pi, U+03A0 ISOgrk3
    ("Rho"	. "Ρ") ;; greek capital letter rho, U+03A1
    ;; there is no Sigmaf, and no U+03A2 character either
    ("Sigma"	. "Σ") ;; greek capital letter sigma, U+03A3 ISOgrk3
    ("Tau"	. "Τ") ;; greek capital letter tau, U+03A4
    ("Upsilon"	. "Υ") ;; greek capital letter upsilon, U+03A5 ISOgrk3
    ("Phi"	. "Φ") ;; greek capital letter phi, U+03A6 ISOgrk3
    ("Chi"	. "Χ") ;; greek capital letter chi, U+03A7
    ("Psi"	. "Ψ") ;; greek capital letter psi, U+03A8 ISOgrk3
    ("Omega"	. "Ω") ;; greek capital letter omega, U+03A9 ISOgrk3

    ("alpha"	. "α") ;; greek small letter alpha, U+03B1 ISOgrk3
    ("beta"	. "β") ;; greek small letter beta, U+03B2 ISOgrk3
    ("gamma"	. "γ") ;; greek small letter gamma, U+03B3 ISOgrk3
    ("delta"	. "δ") ;; greek small letter delta, U+03B4 ISOgrk3
    ("epsilon"	. "ε") ;; greek small letter epsilon, U+03B5 ISOgrk3
    ("zeta"	. "ζ") ;; greek small letter zeta, U+03B6 ISOgrk3
    ("eta"	. "η") ;; greek small letter eta, U+03B7 ISOgrk3
    ("theta"	. "θ") ;; greek small letter theta, U+03B8 ISOgrk3
    ("iota"	. "ι") ;; greek small letter iota, U+03B9 ISOgrk3
    ("kappa"	. "κ") ;; greek small letter kappa, U+03BA ISOgrk3
    ("lambda"	. "λ") ;; greek small letter lamda, U+03BB ISOgrk3
    ("mu"	. "μ") ;; greek small letter mu, U+03BC ISOgrk3
    ("nu"	. "ν") ;; greek small letter nu, U+03BD ISOgrk3
    ("xi"	. "ξ") ;; greek small letter xi, U+03BE ISOgrk3
    ("omicron"	. "ο") ;; greek small letter omicron, U+03BF NEW
    ("pi"	. "π") ;; greek small letter pi, U+03C0 ISOgrk3
    ("rho"	. "ρ") ;; greek small letter rho, U+03C1 ISOgrk3
    ("sigmaf"	. "ς") ;; greek small letter final sigma, U+03C2 ISOgrk3
    ("sigma"	. "σ") ;; greek small letter sigma, U+03C3 ISOgrk3
    ("tau"	. "τ") ;; greek small letter tau, U+03C4 ISOgrk3
    ("upsilon"	. "υ") ;; greek small letter upsilon, U+03C5 ISOgrk3
    ("phi"	. "φ") ;; greek small letter phi, U+03C6 ISOgrk3
    ("chi"	. "χ") ;; greek small letter chi, U+03C7 ISOgrk3
    ("psi"	. "ψ") ;; greek small letter psi, U+03C8 ISOgrk3
    ("omega"	. "ω") ;; greek small letter omega, U+03C9 ISOgrk3
    ("thetasym"	. "ϑ") ;; greek theta symbol, U+03D1 NEW
    ("upsih"	. "ϒ") ;; greek upsilon with hook symbol, U+03D2 NEW
    ("piv"	. "ϖ") ;; greek pi symbol, U+03D6 ISOgrk3

    ;; General Punctuation
    ("bull"	. "•") ;; bullet = black small circle, U+2022 ISOpub 
    ;; bullet is NOT the same as bullet operator, U+2219
    ("hellip"	. "…") ;; horizontal ellipsis = three dot leader, U+2026 ISOpub 
    ("prime"	. "′") ;; prime = minutes = feet, U+2032 ISOtech
    ("Prime"	. "″") ;; double prime = seconds = inches, U+2033 ISOtech
    ("oline"	. "‾") ;; overline = spacing overscore, U+203E NEW
    ("frasl"	. "⁄") ;; fraction slash, U+2044 NEW

    ;; Letterlike Symbols
    ("weierp"	. "℘") ;; script capital P = power set = Weierstrass p, U+2118
		       ;; ISOamso
    ("image"	. "ℑ") ;; black-letter capital I = imaginary part, U+2111
		       ;; ISOamso
    ("real"	. "ℜ") ;; black-letter capital R = real part symbol, U+211C
		       ;; ISOamso
    ("trade"	. "™") ;; trade mark sign, U+2122 ISOnum
    ("alefsym"	. "ℵ") ;; alef symbol = first transfinite cardinal, U+2135 NEW
    ;; alef symbol is NOT the same as hebrew letter alef, U+05D0 although the
    ;; same glyph could be used to depict both characters

    ;; Arrows
    ("larr"	. "←") ;; leftwards arrow, U+2190 ISOnum
    ("uarr"	. "↑") ;; upwards arrow, U+2191 ISOnum
    ("rarr"	. "→") ;; rightwards arrow, U+2192 ISOnum
    ("darr"	. "↓") ;; downwards arrow, U+2193 ISOnum
    ("harr"	. "↔") ;; left right arrow, U+2194 ISOamsa
    ("crarr"	. "↵") ;; downwards arrow with corner leftwards = carriage
		       ;; return, U+21B5 NEW
    ("lArr"	. "⇐") ;; leftwards double arrow, U+21D0 ISOtech
    ;; Unicode does not say that lArr is the same as the 'is implied by' arrow
    ;; but also does not have any other character for that function. So lArr
    ;; can be used for 'is implied by' as ISOtech suggests
    ("uArr"	. "⇑") ;; upwards double arrow, U+21D1 ISOamsa
    ("rArr"	. "⇒") ;; rightwards double arrow, U+21D2 ISOtech
    ;; Unicode does not say this is the 'implies' character but does not have
    ;; another character with this function so rArr can be used for 'implies'
    ;; as ISOtech suggests
    ("dArr"	. "⇓") ;; downwards double arrow, U+21D3 ISOamsa
    ("hArr"	. "⇔") ;; left right double arrow, U+21D4 ISOamsa

    ;; Mathematical Operators
    ("forall"	. "∀") ;; for all, U+2200 ISOtech
    ("part"	. "∂") ;; partial differential, U+2202 ISOtech 
    ("exist"	. "∃") ;; there exists, U+2203 ISOtech
    ("empty"	. "∅") ;; empty set = null set, U+2205 ISOamso
    ("nabla"	. "∇") ;; nabla = backward difference, U+2207 ISOtech
    ("isin"	. "∈") ;; element of, U+2208 ISOtech
    ("notin"	. "∉") ;; not an element of, U+2209 ISOtech
    ("ni"	. "∋") ;; contains as member, U+220B ISOtech
    ("prod"	. "∏") ;; n-ary product = product sign, U+220F ISOamsb
    ;; prod is NOT the same character as U+03A0 'greek capital letter pi'
    ;; though the same glyph might be used for both
    ("sum"	. "∑") ;; n-ary summation, U+2211 ISOamsb
    ;; sum is NOT the same character as U+03A3 'greek capital letter sigma'
    ;; though the same glyph might be used for both
    ("minus"	. "−") ;; minus sign, U+2212 ISOtech
    ("lowast"	. "∗") ;; asterisk operator, U+2217 ISOtech
    ("radic"	. "√") ;; square root = radical sign, U+221A ISOtech
    ("prop"	. "∝") ;; proportional to, U+221D ISOtech
    ("infin"	. "∞") ;; infinity, U+221E ISOtech
    ("ang"	. "∠") ;; angle, U+2220 ISOamso
    ("and"	. "∧") ;; logical and = wedge, U+2227 ISOtech
    ("or"	. "∨") ;; logical or = vee, U+2228 ISOtech
    ("cap"	. "∩") ;; intersection = cap, U+2229 ISOtech
    ("cup"	. "∪") ;; union = cup, U+222A ISOtech
    ("int"	. "∫") ;; integral, U+222B ISOtech
    ("there4"	. "∴") ;; therefore, U+2234 ISOtech
    ("sim"	. "∼") ;; tilde operator = varies with = similar to, U+223C
		       ;; ISOtech
    ;; tilde operator is NOT the same character as the tilde, U+007E, although
    ;; the same glyph might be used to represent both
    ("cong"	. "≅") ;; approximately equal to, U+2245 ISOtech
    ("asymp"	. "≈") ;; almost equal to = asymptotic to, U+2248 ISOamsr
    ("ne"	. "≠") ;; not equal to, U+2260 ISOtech
    ("equiv"	. "≡") ;; identical to, U+2261 ISOtech
    ("le"	. "≤") ;; less-than or equal to, U+2264 ISOtech
    ("ge"	. "≥") ;; greater-than or equal to, U+2265 ISOtech
    ("sub"	. "⊂") ;; subset of, U+2282 ISOtech
    ("sup"	. "⊃") ;; superset of, U+2283 ISOtech
    ("nsub"	. "⊄") ;; not a subset of, U+2284 ISOamsn
    ("sube"	. "⊆") ;; subset of or equal to, U+2286 ISOtech
    ("supe"	. "⊇") ;; superset of or equal to, U+2287 ISOtech
    ("oplus"	. "⊕") ;; circled plus = direct sum, U+2295 ISOamsb
    ("otimes"	. "⊗") ;; circled times = vector product, U+2297 ISOamsb
    ("perp"	. "⊥") ;; up tack = orthogonal to = perpendicular, U+22A5
		       ;; ISOtech
    ("sdot"	. "⋅") ;; dot operator, U+22C5 ISOamsb
    ;; dot operator is NOT the same character as U+00B7 middle dot

    ;; Miscellaneous Technical
    ("lceil"	. "⌈") ;; left ceiling = APL upstile, U+2308 ISOamsc 
    ("rceil"	. "⌉") ;; right ceiling, U+2309 ISOamsc 
    ("lfloor"	. "⌊") ;; left floor = APL downstile, U+230A ISOamsc 
    ("rfloor"	. "⌋") ;; right floor, U+230B ISOamsc 
    ("lang"	. "〈") ;; left-pointing angle bracket = bra, U+2329 ISOtech
    ;; lang is NOT the same character as U+003C 'less than sign' or U+2039
    ;; 'single left-pointing angle quotation mark'
    ("rang"	. "〉") ;; right-pointing angle bracket = ket, U+232A ISOtech
    ;; rang is NOT the same character as U+003E 'greater than sign' or U+203A
    ;; 'single right-pointing angle quotation mark'

    ;; Geometric Shapes
    ("loz"	. "◊") ;; lozenge, U+25CA ISOpub

    ;; Miscellaneous Symbols
    ("spades"	. "♠") ;; black spade suit, U+2660 ISOpub
    ;; black here seems to mean filled as opposed to hollow
    ("clubs"	. "♣") ;; black club suit = shamrock, U+2663 ISOpub
    ("hearts"	. "♥") ;; black heart suit = valentine, U+2665 ISOpub
    ("diams"	. "♦")) ;; black diamond suit, U+2666 ISOpub
  "The XHTML entities, in a format suitable for the `xml.el'
package.")

(provide 'xml-xhtml-entities)
;;; xml-xhtml-entities.el ends here
