module UnicodeToIPANumberSpec where
import Control.Monad (unless)

import UnicodeToIPANumber (unicodeToNumber)

unicodeToIPANumberSpec :: IO ()
unicodeToIPANumberSpec =
	putStrLn "Convert Unicode code points to IPA Numbers"
	>> unless (unicodeToNumber 'p' == 101) (error "latin small letter p to IPA Number 101")
	>> unless (unicodeToNumber '\x0070' == 101) (error "latin small letter p code point to IPA Number 101")
	>> unless (unicodeToNumber 'b' == 102) (error "latin small letter b to IPA Number 102")
	>> unless (unicodeToNumber '\x0062' == 102) (error "latin small letter b code point to IPA Number 102")
	>> unless (unicodeToNumber 't' == 103) (error "latin small letter t to IPA Number 103")
	>> unless (unicodeToNumber '\x0074' == 103) (error "latin small letter t code point to IPA Number 103")
	>> unless (unicodeToNumber 'd' == 104) (error "latin small letter d to IPA Number 104")
	>> unless (unicodeToNumber '\x0064' == 104) (error "latin small letter d code point to IPA Number 104")
	>> unless (unicodeToNumber 'ʈ' == 105) (error "latin small letter t with retroflex hook to IPA Number 105")
	>> unless (unicodeToNumber '\x0288' == 105) (error "latin small letter t with retroflex hook code point to IPA Number 105")
	>> unless (unicodeToNumber 'ɖ' == 106) (error "latin small letter d with tail to IPA Number 106")
	>> unless (unicodeToNumber '\x0256' == 106) (error "latin small letter d with tail code point to IPA Number 106")
	>> unless (unicodeToNumber 'c' == 107) (error "latin small letter c to IPA Number 107")
	>> unless (unicodeToNumber '\x0063' == 107) (error "latin small letter c code point to IPA Number 107")
	>> unless (unicodeToNumber 'ɟ' == 108) (error "latin small dotless j with stroke to IPA Number 108")
	>> unless (unicodeToNumber '\x025F' == 108) (error "latin small dotless j with stroke code point to IPA Number 108")
	>> unless (unicodeToNumber 'k' == 109) (error "latin small letter k to IPA Number 109")
	>> unless (unicodeToNumber '\x006B' == 109) (error "latin small letter k code point to IPA Number 109")
	>> unless (unicodeToNumber 'g' == 110) (error "latin small letter g to IPA Number 110")
	>> unless (unicodeToNumber '\x0067' == 110) (error "latin small letter g code point to IPA Number 110")
	>> unless (unicodeToNumber 'ɡ' == 110) (error "latin small letter script g to IPA Number 110")
	>> unless (unicodeToNumber '\x0261' == 110) (error "latin small letter script g code point to IPA Number 110")
	>> unless (unicodeToNumber 'q' == 111) (error "latin small letter q to IPA Number 111")
	>> unless (unicodeToNumber '\x0071' == 111) (error "latin small letter q code point to IPA Number 111")
	>> unless (unicodeToNumber 'ɢ' == 112) (error "latin letter small capital g to IPA Number 112")
	>> unless (unicodeToNumber '\x0262' == 112) (error "latin letter small capital g code point to IPA Number 112")
	>> unless (unicodeToNumber 'ʔ' == 113) (error "latin letter glottal stop to IPA Number 113")
	>> unless (unicodeToNumber '\x0294' == 113) (error "latin letter glottal stop code point to IPA Number 113")
	>> unless (unicodeToNumber 'm' == 114) (error "latin small letter m to IPA Number 114")
	>> unless (unicodeToNumber '\x006D' == 114) (error "latin small letter m code point to IPA Number 114")
	>> unless (unicodeToNumber 'ɱ' == 115) (error "latin small letter m with hook to IPA Number 115")
	>> unless (unicodeToNumber '\x0271' == 115) (error "latin small letter m with hook code point to IPA Number 115")
	>> unless (unicodeToNumber 'n' == 116) (error "latin small letter n to IPA Number 116")
	>> unless (unicodeToNumber '\x006E' == 116) (error "latin small letter n code point to IPA Number 116")
	>> unless (unicodeToNumber 'ɳ' == 117) (error "latin small letter n with retroflex hook to IPA Number 117")
	>> unless (unicodeToNumber '\x0273' == 117) (error "latin small letter n with retroflex hook code point to IPA Number 117")
	>> unless (unicodeToNumber 'ɲ' == 118) (error "latin small letter n with left hook to IPA Number 118")
	>> unless (unicodeToNumber '\x0272' == 118) (error "latin small letter n with left hook code point to IPA Number 118")
	>> unless (unicodeToNumber 'ŋ' == 119) (error "latin small letter eng to IPA Number 119")
	>> unless (unicodeToNumber '\x014B' == 119) (error "latin small letter eng code point to IPA Number 119")
	>> unless (unicodeToNumber 'ɴ' == 120) (error "latin letter small capital n to IPA Number 120")
	>> unless (unicodeToNumber '\x0274' == 120) (error "latin letter small capital n code point to IPA Number 120")
	>> unless (unicodeToNumber 'ʙ' == 121) (error "latin letter small capital b to IPA Number 121")
	>> unless (unicodeToNumber '\x0299' == 121) (error "latin letter small capital b code point to IPA Number 121")
	>> unless (unicodeToNumber 'r' == 122) (error "latin small letter r to IPA Number 122")
	>> unless (unicodeToNumber '\x0072' == 122) (error "latin small letter r code point to IPA Number 122")
	>> unless (unicodeToNumber 'ʀ' == 123) (error "latin letter small capital r to IPA Number 123")
	>> unless (unicodeToNumber '\x0280' == 123) (error "latin letter small capital r code point to IPA Number 123")
	>> unless (unicodeToNumber 'ⱱ' == 184) (error "latin small letter v with right hook to IPA Number 184")
	>> unless (unicodeToNumber '\x2C71' == 184) (error "latin small letter v with right hook code point to IPA Number 184")
	>> unless (unicodeToNumber 'ɾ' == 124) (error "latin small letter r with fishhook to IPA Number 124")
	>> unless (unicodeToNumber '\x027E' == 124) (error "latin small letter r with fishhook code point to IPA Number 124")
	>> unless (unicodeToNumber 'ɽ' == 125) (error "latin small letter r with tail to IPA Number 125")
	>> unless (unicodeToNumber '\x027D' == 125) (error "latin small letter r with tail code point to IPA Number 125")
	>> unless (unicodeToNumber 'ɸ' == 126) (error "latin small letter phi to IPA Number 126")
	>> unless (unicodeToNumber '\x0278' == 126) (error "latin small letter phi code point to IPA Number 126")
	>> unless (unicodeToNumber 'β' == 127) (error "greek small letter beta to IPA Number 127")
	>> unless (unicodeToNumber '\x03B2' == 127) (error "latin small letter beta code point to IPA Number 127")
	>> unless (unicodeToNumber 'f' == 128) (error "latin small letter f to IPA Number 128")
	>> unless (unicodeToNumber '\x0066' == 128) (error "latin small letter f code point to IPA Number 128")
	>> unless (unicodeToNumber 'v' == 129) (error "latin small letter v to IPA Number 129")
	>> unless (unicodeToNumber '\x0076' == 129) (error "latin small letter v code point to IPA Number 129")
	>> unless (unicodeToNumber 'θ' == 130) (error "greek small letter theta to IPA Number 130")
	>> unless (unicodeToNumber '\x03B8' == 130) (error "greek small letter theta code point to IPA Number 130")
	>> unless (unicodeToNumber 'ð' == 131) (error "latin small letter eth to IPA Number 131")
	>> unless (unicodeToNumber '\x00F0' == 131) (error "latin small letter eth code point to IPA Number 131")
	>> unless (unicodeToNumber 's' == 132) (error "latin small letter s to IPA Number 132")
	>> unless (unicodeToNumber '\x0073' == 132) (error "latin small letter s code point to IPA Number 132")
	>> unless (unicodeToNumber 'z' == 133) (error "latin small letter z to IPA Number 133")
	>> unless (unicodeToNumber '\x007A' == 133) (error "latin small letter z code point to IPA Number 133")
	>> unless (unicodeToNumber 'ʃ' == 134) (error "latin small letter esh to IPA Number 134")
	>> unless (unicodeToNumber '\x0283' == 134) (error "latin small letter esh code point to IPA Number 134")
	>> unless (unicodeToNumber 'ʒ' == 135) (error "latin small letter ezh to IPA Number 135")
	>> unless (unicodeToNumber '\x0292' == 135) (error "latin small letter ezh code point to IPA Number 135")
	>> unless (unicodeToNumber 'ʂ' == 136) (error "latin small letter s with hook to IPA Number 136")
	>> unless (unicodeToNumber '\x0282' == 136) (error "latin small letter s with hook code point to IPA Number 136")
	>> unless (unicodeToNumber 'ʐ' == 137) (error "latin small letter z with retroflex hook to IPA Number 137")
	>> unless (unicodeToNumber '\x0290' == 137) (error "latin small letter z with retroflex hook code point to IPA Number 137")
	>> unless (unicodeToNumber 'ç' == 138) (error "latin small letter c with cedilla to IPA Number 138")
	>> unless (unicodeToNumber '\x00E7' == 138) (error "latin small letter c with cedilla code point to IPA Number 138")
	>> unless (unicodeToNumber 'ʝ' == 139) (error "latin small letter j with crossed tail to IPA Number 139")
	>> unless (unicodeToNumber '\x029D' == 139) (error "latin small letter j with crossed tail code point to IPA Number 139")
	>> unless (unicodeToNumber 'x' == 140) (error "latin small letter x to IPA Number 140")
	>> unless (unicodeToNumber '\x0078' == 140) (error "latin small letter x code point to IPA Number 140")
	>> unless (unicodeToNumber 'ɣ' == 141) (error "latin small letter gamma to IPA Number 141")
	>> unless (unicodeToNumber '\x0263' == 141) (error "latin small letter gamma code point to IPA Number 141")
	>> unless (unicodeToNumber 'χ' == 142) (error "greek small letter chi to IPA Number 142")
	>> unless (unicodeToNumber '\x03C7' == 142) (error "greek small letter chi code point to IPA Number 142")
	>> unless (unicodeToNumber 'ʁ' == 143) (error "latin letter small capital inverted r to IPA Number 143")
	>> unless (unicodeToNumber '\x0281' == 143) (error "latin letter small capital inverted r code point to IPA Number 143")
	>> unless (unicodeToNumber 'ħ' == 144) (error "latin small letter h with stroke to IPA Number 144")
	>> unless (unicodeToNumber '\x0127' == 144) (error "latin small letter h with stroke code point to IPA Number 144")
	>> unless (unicodeToNumber 'ʕ' == 145) (error "latin letter pharyngeal voiced fricative to IPA Number 145")
	>> unless (unicodeToNumber '\x0295' == 145) (error "latin letter pharyngeal voiced fricative code point to IPA Number 145")
	>> unless (unicodeToNumber 'h' == 146) (error "latin small letter h to IPA Number 146")
	>> unless (unicodeToNumber '\x0068' == 146) (error "latin small letter h code point to IPA Number 146")
	>> unless (unicodeToNumber 'ɦ' == 147) (error "latin small letter h with hook to IPA Number 147")
	>> unless (unicodeToNumber '\x0266' == 147) (error "latin small letter h with hook code point to IPA Number 147")
	>> unless (unicodeToNumber 'ɬ' == 148) (error "latin small letter l with belt to IPA Number 148")
	>> unless (unicodeToNumber '\x026C' == 148) (error "latin small letter l with belt code point to IPA Number 148")
	>> unless (unicodeToNumber 'ɮ' == 149) (error "latin small letter lezh to IPA Number 149")
	>> unless (unicodeToNumber '\x026E' == 149) (error "latin small letter lezh code point to IPA Number 149")
	>> unless (unicodeToNumber 'ʋ' == 150) (error "latin small letter v with hook to IPA Number 150")
	>> unless (unicodeToNumber '\x028B' == 150) (error "latin small letter v with hook code point to IPA Number 150")
	>> unless (unicodeToNumber 'ɹ' == 151) (error "latin small letter turned r to IPA Number 151")
	>> unless (unicodeToNumber '\x0279' == 151) (error "latin small letter turned r code point to IPA Number 151")
	>> unless (unicodeToNumber 'ɻ' == 152) (error "latin small letter turned r with hook to IPA Number 152")
	>> unless (unicodeToNumber '\x027B' == 152) (error "latin small letter turned r with hook code point to IPA Number 152")
	>> unless (unicodeToNumber 'j' == 153) (error "latin small letter j to IPA Number 153")
	>> unless (unicodeToNumber '\x006A' == 153) (error "latin small letter j code point to IPA Number 153")
	>> unless (unicodeToNumber 'ɰ' == 154) (error "latin small letter turned m with long leg to IPA Number 154")
	>> unless (unicodeToNumber '\x0270' == 154) (error "latin small letter turned m with long leg code point to IPA Number 154")
	>> unless (unicodeToNumber 'l' == 155) (error "latin small letter l to IPA Number 155")
	>> unless (unicodeToNumber '\x006C' == 155) (error "latin small letter l code point to IPA Number 155")
	>> unless (unicodeToNumber 'ɭ' == 156) (error "latin small letter l with retroflex hook to IPA Number 156")
	>> unless (unicodeToNumber '\x026D' == 156) (error "latin small letter l with retroflex hook code point to IPA Number 156")
	>> unless (unicodeToNumber 'ʎ' == 157) (error "latin small letter turned y to IPA Number 157")
	>> unless (unicodeToNumber '\x028E' == 157) (error "latin small letter turned y code point to IPA Number 157")
	>> unless (unicodeToNumber 'ʟ' == 158) (error "latin letter small capital l to IPA Number 158")
	>> unless (unicodeToNumber '\x029F' == 158) (error "latin letter small capital l code point to IPA Number 158")
	>> unless (unicodeToNumber 'ʘ' == 176) (error "latin letter bilabial click to IPA Number 176")
	>> unless (unicodeToNumber '\x0298' == 176) (error "latin letter bilabial click code point to IPA Number 176")
	>> unless (unicodeToNumber 'ǀ' == 177) (error "latin letter dental click to IPA Number 177")
	>> unless (unicodeToNumber '\x01C0' == 177) (error "latin letter dental click code point")
	>> unless (unicodeToNumber 'ǃ' == 178) (error "latin letter retroflex click to IPA Number 178")
	>> unless (unicodeToNumber '\x01C3' == 178) (error "latin letter retroflex click")
	>> unless (unicodeToNumber 'ǂ' == 179) (error "latin letter alveolar click to IPA Number 179")
	>> unless (unicodeToNumber '\x01C2' == 179) (error "latin letter alveolar click code point")
	>> unless (unicodeToNumber 'ǁ' == 180) (error "latin letter lateral click to IPA Number 180")
	>> unless (unicodeToNumber '\x01C1' == 180) (error "latin letter lateral click code point")
	>> unless (unicodeToNumber 'ɓ' == 160) (error "latin small letter b with hook to IPA Number 160")
	>> unless (unicodeToNumber '\x0253' == 160) (error "latin small letter b with hook code point")
	>> unless (unicodeToNumber 'ɗ' == 162) (error "latin small letter d with hook to IPA Number 162")
	>> unless (unicodeToNumber '\x0257' == 162) (error "latin small letter d with hook code point")
	>> unless (unicodeToNumber 'ʄ' == 164) (error "latin small letter dotless j with stroke and hook to IPA Number 164")
	>> unless (unicodeToNumber '\x0284' == 164) (error "latin small letter dotless j with stroke and hook code point")
	>> unless (unicodeToNumber 'ɠ' == 166) (error "latin small letter g with hook to IPA Number 166")
	>> unless (unicodeToNumber '\x0260' == 166) (error "latin small letter g with hook code point")
	>> unless (unicodeToNumber 'ʛ' == 168) (error "latin letter small capital g with hook to IPA Number 168")
	>> unless (unicodeToNumber '\x029B' == 168) (error "latin letter small capital g with hook code point")
	>> unless (unicodeToNumber 'ʼ' == 401) (error "modifier letter apostrophe to IPA Number 401")
	>> unless (unicodeToNumber '\x02BC' == 401) (error "modifier letter apostrophe code point")
	>> unless (unicodeToNumber 'i' == 301) (error "latin small letter i to IPA Number 301")
	>> unless (unicodeToNumber '\x0069' == 301) (error "latin small letter i code point")
	>> unless (unicodeToNumber 'y' == 309) (error "latin small letter y to IPA Number 309")
	>> unless (unicodeToNumber '\x0079' == 309) (error "latin small letter y code point")
	>> unless (unicodeToNumber 'ɨ' == 317) (error "latin small letter i with stroke to IPA Number 317")
	>> unless (unicodeToNumber '\x0268' == 317) (error "latin small letter i with stroke code point")
	>> unless (unicodeToNumber 'ʉ' == 318) (error "latin small letter u bar to IPA Number 318")
	>> unless (unicodeToNumber '\x0289' == 318) (error "latin small letter u bar code point")
	>> unless (unicodeToNumber 'ɯ' == 316) (error "latin small letter turned m to IPA Number 316")
	>> unless (unicodeToNumber '\x026F' == 316) (error "latin small letter turned m code point")
	>> unless (unicodeToNumber 'u' == 308) (error "latin small letter u to IPA Number 308")
	>> unless (unicodeToNumber '\x0075' == 308) (error "latin small letter u code point")
	>> unless (unicodeToNumber 'ɪ' == 319) (error "latin letter small capital i to IPA Number 319")
	>> unless (unicodeToNumber '\x026A' == 319) (error "latin letter small capital i code paint")
	>> unless (unicodeToNumber 'ʏ' == 320) (error "latin letter small capital y to IPA Number 320")
	>> unless (unicodeToNumber '\x028F' == 320) (error "latin letter small capital y code point")
	>> unless (unicodeToNumber 'ʊ' == 321) (error "latin small letter upsilon to IPA Number 321")
	>> unless (unicodeToNumber '\x028A' == 321) (error "latin small letter upsilon code point")
	>> unless (unicodeToNumber 'e' == 302) (error "latin small letter e to IPA Number 302")
	>> unless (unicodeToNumber '\x0065' == 302) (error "latin small letter e code point")
	>> unless (unicodeToNumber 'ø' == 310) (error "latin small letter o with stroke to IPA Number 310")
	>> unless (unicodeToNumber '\x00F8' == 310) (error "latin small letter o with stroke code point")
	>> unless (unicodeToNumber 'ɘ' == 397) (error "latin small letter reversed e to IPA Number 397")
	>> unless (unicodeToNumber '\x0258' == 397) (error "latin small letter reversed e code point")
	>> unless (unicodeToNumber 'ɵ' == 323) (error "latin small letter barred o to IPA Number 323")
	>> unless (unicodeToNumber '\x0275' == 323) (error "latin small letter barred o code point")
	>> unless (unicodeToNumber 'ɤ' == 315) (error "latin small letter rams horn to IPA Number 315")
	>> unless (unicodeToNumber '\x0264' == 315) (error "latin small letter rams horn code point")
	>> unless (unicodeToNumber 'o' == 307) (error "latin small letter o to IPA Number 307")
	>> unless (unicodeToNumber '\x006F' == 307) (error "latin small letter o code point")
	>> unless (unicodeToNumber 'ə' == 322) (error "latin small letter schwa to IPA Number 322")
	>> unless (unicodeToNumber '\x0259' == 322) (error "latin small letter schwa code point")
	>> unless (unicodeToNumber 'ɛ' == 303) (error "latin small letter open e to IPA Number 303")
	>> unless (unicodeToNumber '\x025B' == 303) (error "latin small letter open e code point")
	>> unless (unicodeToNumber 'œ' == 311) (error "latin small ligature oe to IPA Number 311")
	>> unless (unicodeToNumber '\x0153' == 311) (error "latin small ligature oe code point")
	>> unless (unicodeToNumber 'ɜ' == 326) (error "latin small letter reversed open e to IPA Number 326")
	>> unless (unicodeToNumber '\x025C' == 326) (error "latin small letter reversed open e code point")
	>> unless (unicodeToNumber 'ɞ' == 395) (error "latin small letter closed reversed open e to IPA Number 395")
	>> unless (unicodeToNumber '\x025E' == 395) (error "latin small letter closed reversed open e code point")
	>> unless (unicodeToNumber 'ʌ' == 314) (error "latin small letter turned v to IPA Number 314")
	>> unless (unicodeToNumber '\x028C' == 314) (error "latin small letter turned v code point")
	>> unless (unicodeToNumber 'ɔ' == 306) (error "latin small letter open o to IPA Number 306")
	>> unless (unicodeToNumber '\x0254' == 306) (error "latin small letter open o code point")
	>> unless (unicodeToNumber 'æ' == 325) (error "latin small letter ae to IPA Number 325")
	>> unless (unicodeToNumber '\x00E6' == 325) (error "latin small letter ae code point")
	>> unless (unicodeToNumber 'ɐ' == 324) (error "latin small letter turned a to IPA Number 324")
	>> unless (unicodeToNumber '\x0250' == 324) (error "latin small letter turned a code point")
	>> unless (unicodeToNumber 'a' == 304) (error "latin small letter a to IPA Number 304")
	>> unless (unicodeToNumber '\x0061' == 304) (error "latin small letter a code point")
	>> unless (unicodeToNumber 'ɶ' == 312) (error "latin letter small capital oe to IPA Number 312")
	>> unless (unicodeToNumber '\x0276' == 312) (error "latin letter small capital oe code point")
	>> unless (unicodeToNumber 'ɑ' == 305) (error "latin small letter alpha to IPA Number 305")
	>> unless (unicodeToNumber '\x0251' == 305) (error "latin small letter alpha code point")
	>> unless (unicodeToNumber 'ɒ' == 313) (error "latin small letter turned alpha to IPA Number 313")
	>> unless (unicodeToNumber '\x0252' == 313) (error "latin small letter turned alpha code point")
	>> unless (unicodeToNumber 'ʍ' == 169) (error "latin small letter turned w to IPA Number 169")
	>> unless (unicodeToNumber '\x028D' == 169) (error "latin small letter turned w code point")
	>> unless (unicodeToNumber 'w' == 170) (error "latin small letter w to IPA Number 170")
	>> unless (unicodeToNumber '\x0077' == 170) (error "latin small letter w code point")
	>> unless (unicodeToNumber 'ɥ' == 171) (error "latin small letter turned h to IPA Number 171")
	>> unless (unicodeToNumber '\x0265' == 171) (error "latin small letter turned h code point")
	>> unless (unicodeToNumber 'ʜ' == 172) (error "latin letter small capital h to IPA Number 172")
	>> unless (unicodeToNumber '\x029C' == 172) (error "latin letter small capital h code point")
	>> unless (unicodeToNumber 'ʢ' == 174) (error "latin letter reversed glottal stop with stroke to IPA Number 174")
	>> unless (unicodeToNumber '\x02A2' == 174) (error "latin letter reversed glottal stop with stroke code point")
	>> unless (unicodeToNumber 'ʡ' == 173) (error "latin letter glottal stop with stroke to IPA Number 173")
	>> unless (unicodeToNumber '\x02A1' == 173) (error "latin letter glottal stop with stroke code point")
	>> unless (unicodeToNumber 'ɕ' == 182) (error "latin small letter c with curl to IPA Number 182")
	>> unless (unicodeToNumber '\x0255' == 182) (error "latin small letter c with curl code point")
	>> unless (unicodeToNumber 'ʑ' == 183) (error "latin small letter z with curl to IPA Number 183")
	>> unless (unicodeToNumber '\x0291' == 183) (error "latin small letter z with curl code point")
	>> unless (unicodeToNumber 'ɺ' == 181) (error "latin small letter turned r with long leg to IPA Number 181")
	>> unless (unicodeToNumber '\x027A' == 181) (error "latin small letter turned r with long leg code point")
	>> unless (unicodeToNumber 'ɧ' == 175) (error "latin small letter heng with hook to IPA Number 175")
	>> unless (unicodeToNumber '\x0267' == 175) (error "latin small letter heng with hook code point")
	>> unless (unicodeToNumber '͡' == 433) (error "combining double inverted breve to IPA Number 433")
	>> unless (unicodeToNumber '\x0361' == 433) (error "combining double inverted breve code point")
	>> unless (unicodeToNumber '͜' == 433) (error "combining double breve below to IPA Number 433")
	>> unless (unicodeToNumber '\x035C' == 433) (error "combining double breve below code point")
	>> unless (unicodeToNumber 'ˈ' == 501) (error "modifier letter vertical line to IPA Number 501")
	>> unless (unicodeToNumber '\x02C8' == 501) (error "modifier letter vertical line code point")
	>> unless (unicodeToNumber 'ˌ' == 502) (error "modifier letter low vertical line to IPA Number 502")
	>> unless (unicodeToNumber '\x02CC' == 502) (error "modifier letter low vertical line code point")
	>> unless (unicodeToNumber 'ː' == 503) (error "modifier letter triangular colon to IPA Number 503")
	>> unless (unicodeToNumber '\x02D0' == 503) (error "modifier letter triangular colon code point")
	>> unless (unicodeToNumber 'ˑ' == 504) (error "modifier letter half triangular colon to IPA Number 504")
	>> unless (unicodeToNumber '\x02D1' == 504) (error "modifier letter half triangular colon code point")
	>> unless (unicodeToNumber '̆' == 505) (error "combining breve to IPA Number 505")
	>> unless (unicodeToNumber '\x0306' == 505) (error "combining breve code point")
	>> unless (unicodeToNumber '|' == 507) (error "vertical line to IPA Number 507")
	>> unless (unicodeToNumber '\x007C' == 507) (error "vertical line code point")
	>> unless (unicodeToNumber '‖' == 508) (error "double vertical line to IPA Number 508")
	>> unless (unicodeToNumber '\x2016' == 508) (error "double vertical line code point")
	>> unless (unicodeToNumber '.' == 506) (error "full stop to IPA Number 506")
	>> unless (unicodeToNumber '\x002E' == 506) (error "full stop code point")
	>> unless (unicodeToNumber '‿' == 509) (error "undertie to IPA Number 509")
	>> unless (unicodeToNumber '\x203F' == 509) (error "undertie code point")
	>> unless (unicodeToNumber '̥' == 402) (error "combining ring below to IPA Number 402")
	>> unless (unicodeToNumber '\x0325' == 402) (error "combining ring below code point")
	>> unless (unicodeToNumber '̊' == 402) (error "combining ring above to IPA Number 402")
	>> unless (unicodeToNumber '\x030A' == 402) (error "combining ring above code point")
 	>> unless (unicodeToNumber '̬' == 403) (error "combining caron below to IPA Number 403")
	>> unless (unicodeToNumber '\x032C' == 403) (error "combining caron below code point")
	>> unless (unicodeToNumber 'ʰ' == 404) (error "modifier letter small h to IPA Number 404")
	>> unless (unicodeToNumber '\x02B0' == 404) (error "modifier letter small h code point")
	>> unless (unicodeToNumber '̹' == 411) (error "combining right half ring below to IPA Number 411")
	>> unless (unicodeToNumber '\x0339' == 411) (error "combining right half ring below code point")
	>> unless (unicodeToNumber '̜' == 412) (error "combining left half ring below to IPA Number 412")
	>> unless (unicodeToNumber '\x031C' == 412) (error "combining left half ring below code point")
	>> unless (unicodeToNumber '̟' == 413) (error "combining plus sign below to IPA Number 413")
	>> unless (unicodeToNumber '\x031F' == 413) (error "combining plus sign below")
	>> unless (unicodeToNumber '̠' == 414) (error "combining minus sign below to IPA Number 414")
	>> unless (unicodeToNumber '\x0320' == 414) (error "combining minus sign below code point")
	>> unless (unicodeToNumber '̈' == 415) (error "combining diaeresis to IPA Number 415")
	>> unless (unicodeToNumber '\x0308' == 415) (error "combining diaeresis code point")
	>> unless (unicodeToNumber '̽' == 416) (error "combining x above to IPA Number 416")
	>> unless (unicodeToNumber '\x033D' == 416) (error "combining x above code point")
 	>> unless (unicodeToNumber '̍' == 431) (error "combining vertical line above to IPA Number 431")
	>> unless (unicodeToNumber '\x030D' == 431) (error "combining vertical line above code point")
	>> unless (unicodeToNumber '̩' == 431) (error "combining vertical line below to IPA Number 431")
	>> unless (unicodeToNumber '\x0329' == 431) (error "combining vertical line below code point")
	>> unless (unicodeToNumber '̯' == 432) (error "combining inverted breve below to IPA Number 432")
	>> unless (unicodeToNumber '\x032F' == 432) (error "combining inverted breve below code point")
	>> unless (unicodeToNumber '˞' == 419) (error "modifier letter rhotic hook to IPA Number 419")
	>> unless (unicodeToNumber '\x02DE' == 419) (error "modifier letter rhotic hook code point")
	>> unless (unicodeToNumber '̤' == 405) (error "combining diaeresis below to IPA Number 405")
	>> unless (unicodeToNumber '\x0324' == 405) (error "combining diaeresis below code point")
	>> unless (unicodeToNumber '̰' == 406) (error "combining tilde below to IPA Number 406")
	>> unless (unicodeToNumber '\x0330' == 406) (error "combining tilde below code point")
	>> unless (unicodeToNumber '̼' == 407) (error "combining seagul below to IPA Number 407")
	>> unless (unicodeToNumber '\x033C' == 407) (error "combining seagul below code point")
	>> unless (unicodeToNumber 'ʷ' == 420) (error "modifier letter small w to IPA Number 420")
	>> unless (unicodeToNumber '\x02B7' == 420) (error "modifier letter small w code point")
	>> unless (unicodeToNumber 'ʲ' == 421) (error "modifier letter small j to IPA Number 421")
	>> unless (unicodeToNumber '\x02B2' == 421) (error "modifier letter small j code point")
	>> unless (unicodeToNumber 'ˠ' == 422) (error "modifier letter small gamma to IPA Number 422")
	>> unless (unicodeToNumber '\x02E0' == 422) (error "modifier letter small gamma code point")
	>> unless (unicodeToNumber 'ˤ' == 423) (error "modifier letter small reversed glottal stop to IPA Number 423")
	>> unless (unicodeToNumber '\x02E4' == 423) (error "modifier letter small reversed glottal stop code point")
	>> unless (unicodeToNumber '̴' == 428) (error "combining tilde overlay to IPA Number 428")
	>> unless (unicodeToNumber '\x0334' == 428) (error "combining tilde overlay code point")
	>> unless (unicodeToNumber '̝' == 429) (error "combining up tack below to IPA Number 429")
	>> unless (unicodeToNumber '\x031D' == 429) (error "combining up tack below code point")
	>> unless (unicodeToNumber '̞' == 430) (error "combining down tack below to IPA Number 430")
	>> unless (unicodeToNumber '\x031E' == 430) (error "combining down tack below code point")
	>> unless (unicodeToNumber '̘' == 417) (error "combining left tack below to IPA Number 417")
	>> unless (unicodeToNumber '\x0318' == 417) (error "combining left tack below code point")
	>> unless (unicodeToNumber '̙' == 418) (error "combining right tack below to IPA Number 418")
	>> unless (unicodeToNumber '\x0319' == 418) (error "combining right tack below code point")
	>> unless (unicodeToNumber '̪' == 408) (error "combining bridge below to IPA Number 408")
	>> unless (unicodeToNumber '\x032A' == 408) (error "combining bridge below code point")
	>> unless (unicodeToNumber '̺' == 409) (error "combining inverted bridge below to IPA Number 409")
	>> unless (unicodeToNumber '\x033A' == 409) (error "combining inverted bridge below code point")
	>> unless (unicodeToNumber '̻' == 410) (error "combining square below to IPA Number 410")
	>> unless (unicodeToNumber '\x033B' == 410) (error "combining square below code point")
	>> unless (unicodeToNumber '̃' == 424) (error "combining tilde to IPA Number 424")
	>> unless (unicodeToNumber '\x0303' == 424) (error "combining tilde code point")
	>> unless (unicodeToNumber 'ⁿ' == 425) (error "superscript latin small letter n to IPA Number 425")
	>> unless (unicodeToNumber '\x207F' == 425) (error "superscript latin small letter n code point")
	>> unless (unicodeToNumber 'ˡ' == 426) (error "modifier letter small l to IPA Number 426")
	>> unless (unicodeToNumber '\x02E1' == 426) (error "modifier letter small l code point")
	>> unless (unicodeToNumber '̚' == 427) (error "combining left angle above to IPA Number 427")
	>> unless (unicodeToNumber '\x031A' == 427) (error "combining left angle above code point")
	>> unless (unicodeToNumber '̋' == 512) (error "combining double acute accent to IPA Number 512")
	>> unless (unicodeToNumber '\x030B' == 512) (error "combining double acute accent code point")
	>> unless (unicodeToNumber '́' == 513) (error "combining acute accent to IPA Number 513")
	>> unless (unicodeToNumber '\x0301' == 513) (error "combining acute accent code point")
	>> unless (unicodeToNumber '̄' == 514) (error "combining macron to IPA Number 514")
	>> unless (unicodeToNumber '\x0304' == 514) (error "combining macron code point")
	>> unless (unicodeToNumber '̀' == 515) (error "combining grave accent to IPA Number 515")
	>> unless (unicodeToNumber '\x0300' == 515) (error "combining grave accent code point")
	>> unless (unicodeToNumber '̏' == 516) (error "combining double grave accent to IPA Number 516")
	>> unless (unicodeToNumber '\x030F' == 516) (error "combining double grave accent code point")
	>> unless (unicodeToNumber '↓' == 517) (error "downwards arrow to IPA Number 517")
	>> unless (unicodeToNumber '\x2193' == 517) (error "downwards arrow code point")
	>> unless (unicodeToNumber '̌' == 524) (error "combining caron to IPA Number 524")
	>> unless (unicodeToNumber '\x030C' == 524) (error "combining caron code point")
	>> unless (unicodeToNumber '̂' == 525) (error "combining circumflex accent to IPA Number 525")
	>> unless (unicodeToNumber '\x0302' == 525) (error "combining circumflex accent code point")
	>> unless (unicodeToNumber '᷄' == 526) (error "combining macron acute to IPA Number 526")
	>> unless (unicodeToNumber '\x1DC4' == 526) (error "combining macron acute code point")
	>> unless (unicodeToNumber '᷅' == 527) (error "combining grave macron to IPA Number 527")
	>> unless (unicodeToNumber '\x1DC5' == 527) (error "combining grave macron code point")
	>> unless (unicodeToNumber '᷈' == 528) (error "combining grave acute grave to IPA Number 528")
	>> unless (unicodeToNumber '\x1DC8' == 528) (error "combining grave acute grave code point")
	>> unless (unicodeToNumber '↗' == 510) (error "north east arrow to IPA Number 510")
	>> unless (unicodeToNumber '\x2197' == 510) (error "north east arrow code point")
	>> unless (unicodeToNumber '↘' == 511) (error "south east arrow to IPA Number 511")
	>> unless (unicodeToNumber '\x2198' == 511) (error "south east arrow code point")
	>> unless (unicodeToNumber '↓' == 517) (error "downwards arrow to IPA Number 517")
	>> unless (unicodeToNumber '\x2193' == 517) (error "downwards arrow code point")
	>> unless (unicodeToNumber '↑' == 518) (error "upwards arrow to IPA Number 518")
	>> unless (unicodeToNumber '\x2191' == 518) (error "upwards arrow code point")
	>> unless (unicodeToNumber '˥' == 519) (error "modifier letter extra high tone bar to IPA Number 519")
	>> unless (unicodeToNumber '\x02E5' == 519) (error "modifier letter extra high tone bar code point")
	>> unless (unicodeToNumber '˦' == 520) (error "modifier letter high tone bar to IPA Number 520")
	>> unless (unicodeToNumber '\x02E6' == 520) (error "modifier letter high tone bar code point")
	>> unless (unicodeToNumber '˧' == 521) (error "modifier letter mid tone bar to IPA Number 521")
	>> unless (unicodeToNumber '\x02E7' == 521) (error "modifier letter mid tone bar code point")
	>> unless (unicodeToNumber '˨' == 522) (error "modifier letter low tone bar to IPA Number 522")
	>> unless (unicodeToNumber '\x02E8' == 522) (error "modifier letter low tone bar code point")
	>> unless (unicodeToNumber '˩' == 523) (error "modifier letter extra low tone bar to IPA Number 523")
	>> unless (unicodeToNumber '\x02E9' == 523) (error "modifier letter extra low tone bar")
