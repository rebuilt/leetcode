require "byebug"
def substrings(word)
  length = word.length
  index = 0
  output = 0
  while index < length
    j = 0
    mask = 0b0000000000
    while j < length - index
      letter = word[j + index]
      case letter
      when "a"
        mask ^= 0b0000000001
      when "b"
        mask ^= 0b0000000010
      when "c"
        mask ^= 0b0000000100
      when "d"
        mask ^= 0b0000001000
      when "e"
        mask ^= 0b0000010000
      when "f"
        mask ^= 0b0000100000
      when "g"
        mask ^= 0b0001000000
      when "h"
        mask ^= 0b0010000000
      when "i"
        mask ^= 0b0100000000
      when "j"
        mask ^= 0b1000000000
      end

      output += 1 if mask.to_s(2).count("1") <= 1
      j += 1
    end
    index += 1
  end
  output
end

# words = %w[aba aabb he]
# words = %w[he]
# words = %w[
#   bibacdfehgbchbjicccecacbdeiggideciijgbahifjjhdeddeabbfihbegbagcgbidefijigabfjhbdjfiihggdbjacgjccidedajgaabdibcdfjfjfeifefdeachbcbdadggiagbdfigjadeaadfbadhfjgifeeaagiabddicdejcgaejcdgffggdddffideijchchaffgjhfeaffhbfahieggdahdbeijfjbeaciagfjjbcjdbjgdfeefbgjfhcbajbdghgeieiahadebeiabjedjhbfbhfhajcieibaejefbfeihebbjgciceibbabddcaeehdfdhbeeeffdijfghdfeedfcccfchjhdjddfgehiccdggbdjjghicagdhceiaebfhjhbefghjjcbjbjbfbbdhhdbdbceejaffbdbidaefihcjagaibhihbebhjfggbddhedfcacagegfaiiaeheiggjhfaegffdicgebabceaahjeegafgjgfejfeheafidabjbgafjcdgffdafcgecjdjefcbhefbfghgegfegdabjiicihfdbjjiehjfbjfhgaeacjgfbggggjegffgbabafdhbbiadgfcbfcicjagceeibhagieiddjjhcjdidccgjfbgihadhhjihgdaheibigihefacfbdgfiefehgjbbcggccfcibhbhhjjagjhehciejafbhjeicaieagjagdaaaddfgiibgicgjghdjiddaeihbcbccbfjigdjcachhdcgfheaacfhfajefbccgjcdcaahjaaedcibbjgggajaceijababjafbaccfiffcbedjc faecdbcjjbjccjgcadeeaeddbibjiiecggbchebffdchbdicacdbcgdchdgeciceghcdhfbdhcaagghhhjichcgfdaijicahcihgdejhdafjghhjjeaeajdbiheegghhbfgdidcbbfgbdihedfgghjejafdbeedadcagcfejaaihihfdgdedibiiaaaajeifcfcjeeahhcgidcigjhafibejcadaegbeejbficdjgcjfjcgefeifcijibdhaaccdigjeafcebjaiciicghbheifebdadhdeceidcaijihhecjcfcdagdjhfabejjaijajdeaehfghehggjhaidibdidggfghejbggcadhfgjfaeehhicbgjeibbhbijhfghiejadefebigahfeheageagejehgbfajjadicggiegbcbeigdjbcijagajgfaihedcfcjgibiicbjegjgadahdeefajjbajdhcchdeiediecefacdabeegedhcfbiefjagacbfbgbdhejieffhjhcifijjfbccdfgdhhjfbdcejefedgihdjcahaggcjdfafciecibacijddbebccefchjbjfhgeghbhgaacehebafbdghdjdjdbiajeaiiccifcdcjhiaadchfagjdbhfhhiddhaehcjeafediehghbjaafiicgfejadcahfdgagfadbaiehaeaaiifcbcegihfbiacaadjjgahibbfijdbhbcfhhgccihdahchdeeahjeabeiegdgjfdgdfabfiajhagfdhhjaafacaihiagacgijfjdfafehicbeaicafciegfbefehddbfbgfhdcdchabgdigbceeiegabggeiafejbbdgjgijdfjiibadgfjehhaehjdhcdghadeejdfaicjdajjbiachaiadcghjfbefhgdfagbjibjfhegcbeiiecaaifiidgidbcbgidfgibhjcgjcifaegfgbifcjdgddadgedhbeidgbagiddfbaedhjefgjgfdbcabjcigahfbjcjhdhccjjhhffjcbhjhaeaiifajhjcfaejehjabeeggfaebjeiaacaabijjbeiggjfbdfcfgjcebbehbhcjjggaefgbdhfaigaagfafegbbahfiaabijcffbjddjefcfhhdbbgdjiiabdeaihfccbbfdaifcjhidfijdjdbaebaibfcijhhcddachacfbgddfejeafeddjabbdgcfibgijbcjjijhagddidhhaijiafbaajgejihadjdcdjagbfghjabdhhbbicgceifddgbjeceejbigjfgdedeejbjhdibjghigegjigghghhedhdadgedgbhebedjgjbjjhfedgbhhaebgaeebiajijdhdcacffbfedcbdebidbhieijdcbcdfjgdejehbgecgjcdcfhihgajjggffbaaheiabbbebjcbhdhaajbhicibgajddceaaacgaighhbaacbcbdbdbfacgiaaaaaiedfhcgfgfhhgeeidhgghfbbaadfegchahjcebacbhibbbjbhechefigefhcdcagjjhbhfggjgejfaceeebfibaegfchdabdjgfdjjcacgiifcdcigcfjbegddafefaiaihcbdgdccgiijejdadehgibbagjeajafaggehdajahfcbadjibdgjjcigccbdeiadijejhcjiihcbjijgabhcjfgaiajjigefiddhjcbjjhijbbgbjjeffedffdefbdbhifcidajichgcdchafcfhffifgcfedgafgdhbcedafabhgaejbhdejadiagibiijbdeeggejigadcedbcfbbbcijhjdhdhjceecjjbbfbegegahefigfeahgjbeddaedeaefeehhdhbcdiafhediejdbgaicahgeedfcffjagfgccbbfaajadaeijegfffjiidhgiiadiecbhifeicigjegijecgdjihfbjabigfhbjeejbfghfddehechdjffdbadieibjdddeaejhgijhhihejjcibbaaagbihcagifcjhebhgcjdejgabjjabgbfbbigbjccggbegfcfebfbcjaffhgcjfadaeggcajbgegdejhbfjiehbfgacdgaedeicigeejjgfijjjcgdjaeiadgjhgcdjfgdeagfcfdaicffifgbfdjbebeeadcdbdihjfijiiehbchhbdbbjgcgaejcefacjahcgaeajajejehhbdadihbcjfihaejjbabegbiehjhiccdacjaacdgcbfabgfeifchacbegffhccdgihbbbdcjihibjbjjdbgcfjcehedfjfahajbcfbfdhcgbjdcacbbafejafdciideecfacdhcjdbaigcieghigjfhacfeaifjifchdiggijcfaihhbaifcfjiafhffebbdcfhhacgadhcdcfcieifiifdjhhgjjiicbjjjijahcjijehbghfbbigiaieheiehbdfagijaghhjbfgbbdiajiadbddhbcidahiejehcgcjdegfidhhhcebgfhcifagjdiigicdedfjcifdbcfejifcihjgjeggbfifgbeeejcjfadadafghhhgaifegcajffcceedaejbdidhjajhabigfbaegjiejgaihhahecfccefcfgdhgaaabeiibibgdcgdeajbbjceififfdebdjcigehdgdjbgajhjhigjifejjccheceabcgbafbibiibgiicefefhiceigjhijjafdeiafffgcacjdccadcbecieegfgbfdejiafdhdhhfcjhbfjbehdfdfgcbjijiiddcafaaedcacedfebcafhcibcghhcieihdjdgbeaddgdbjheedjgihffbcbiaccbcgibjgcfagjgcbhhbbaafagefgbfcfdfajecfdhdfjifbffcacfbeccdbfgieegefjdhgdffcfjfajafhggfdjhhfhabgdgfcjhjgjjgicahghegdjddabdiechjdcbaichjijbbgehfgadibgajgdebfgahiidibahabgbcbhfddgefjgjbhbjgjdhhfbccheibbfcebjciafgbgijchchedeahagbcbegjehjgfejhcgihcbiheggeehjcigbjebddcbbedfjieijjjbdafbcdhajchgbbhebeijgheaghjhfidceiediagjhggjchefdjfhbadihaaggdchfhfbdifbibbjahbfadihefeaedgcedgdffdjecdhbhfjebihfgfbcfgieedhcijcfgaiifedebbefbgbgaihiafgafbchggdbceeiiadcbgfbfedihbjidicifdjbggebcdcjbgjfabadfgifiiehfffdfbfidghdhjieiifehiccabechjhggfbcaeccghdchccjhchgcjhdehjjecfbfbgjbabjjdjcgadfaffiicgabheadagadhfchibdbdbfeghdhhcedghdfahcgcihaaaeabfbghijgbbbfjaejhidbaaefgeiihdgdfaeijihfifjdcdjjbjfifdbhdhgeiedfcfcecjeecjcaccjjedefabaaghfbcgdagbdbjggjgjgijcijbbbeddiahahhcbjieabehcjgajcihhdjbgjibbiidigjgifhdididaifcfadcghgfceidhicfegaacideifeighghaggdacdhaiaaffafgchgaffhfjhaddgiaigjefbeabgfeaaibabffiiadgfgcddhfiijahcdccichdeebajhfacajgcihhjccajfdehbaehbdfebcaafiahibjbchcfggicbddbhhbbcfghdehjijhggiidagebfdhaifeghajabbejcgcbigifbedgaagdcccagbeccifgfbdhaidddbdehcafbefcifjjiiibb
# ]
# words.each do |word|
#   valid_substrings = substrings(word)
#   puts valid_substrings
# end

# @param {String} word
# @return {Integer}
def wonderful_substrings(word)
  len_word = word.length
  map = Hash.new(0) # Use a hash map instead of an array of entries
  result = 0
  prefix_xor = 0
  map[prefix_xor] = 1 # Initialize the hash map with the first prefix

  (0...len_word).each do |i|
    ch = word[i]
    char_index = ch.ord - "a".ord
    prefix_xor ^= 1 << char_index
    result += map[prefix_xor]
    10.times do |j|
      result += map[prefix_xor ^ (1 << j)]
    end
    map[prefix_xor] += 1 # Update the hash map with the new prefix
  end

  result
end
# words = %w[aba aabb he]
# words = %w[he]
words = %w[
  bibacdfehgbchbjicccecacbdeiggideciijgbahifjjhdeddeabbfihbegbagcgbidefijigabfjhbdjfiihggdbjacgjccidedajgaabdibcdfjfjfeifefdeachbcbdadggiagbdfigjadeaadfbadhfjgifeeaagiabddicdejcgaejcdgffggdddffideijchchaffgjhfeaffhbfahieggdahdbeijfjbeaciagfjjbcjdbjgdfeefbgjfhcbajbdghgeieiahadebeiabjedjhbfbhfhajcieibaejefbfeihebbjgciceibbabddcaeehdfdhbeeeffdijfghdfeedfcccfchjhdjddfgehiccdggbdjjghicagdhceiaebfhjhbefghjjcbjbjbfbbdhhdbdbceejaffbdbidaefihcjagaibhihbebhjfggbddhedfcacagegfaiiaeheiggjhfaegffdicgebabceaahjeegafgjgfejfeheafidabjbgafjcdgffdafcgecjdjefcbhefbfghgegfegdabjiicihfdbjjiehjfbjfhgaeacjgfbggggjegffgbabafdhbbiadgfcbfcicjagceeibhagieiddjjhcjdidccgjfbgihadhhjihgdaheibigihefacfbdgfiefehgjbbcggccfcibhbhhjjagjhehciejafbhjeicaieagjagdaaaddfgiibgicgjghdjiddaeihbcbccbfjigdjcachhdcgfheaacfhfajefbccgjcdcaahjaaedcibbjgggajaceijababjafbaccfiffcbedjc faecdbcjjbjccjgcadeeaeddbibjiiecggbchebffdchbdicacdbcgdchdgeciceghcdhfbdhcaagghhhjichcgfdaijicahcihgdejhdafjghhjjeaeajdbiheegghhbfgdidcbbfgbdihedfgghjejafdbeedadcagcfejaaihihfdgdedibiiaaaajeifcfcjeeahhcgidcigjhafibejcadaegbeejbficdjgcjfjcgefeifcijibdhaaccdigjeafcebjaiciicghbheifebdadhdeceidcaijihhecjcfcdagdjhfabejjaijajdeaehfghehggjhaidibdidggfghejbggcadhfgjfaeehhicbgjeibbhbijhfghiejadefebigahfeheageagejehgbfajjadicggiegbcbeigdjbcijagajgfaihedcfcjgibiicbjegjgadahdeefajjbajdhcchdeiediecefacdabeegedhcfbiefjagacbfbgbdhejieffhjhcifijjfbccdfgdhhjfbdcejefedgihdjcahaggcjdfafciecibacijddbebccefchjbjfhgeghbhgaacehebafbdghdjdjdbiajeaiiccifcdcjhiaadchfagjdbhfhhiddhaehcjeafediehghbjaafiicgfejadcahfdgagfadbaiehaeaaiifcbcegihfbiacaadjjgahibbfijdbhbcfhhgccihdahchdeeahjeabeiegdgjfdgdfabfiajhagfdhhjaafacaihiagacgijfjdfafehicbeaicafciegfbefehddbfbgfhdcdchabgdigbceeiegabggeiafejbbdgjgijdfjiibadgfjehhaehjdhcdghadeejdfaicjdajjbiachaiadcghjfbefhgdfagbjibjfhegcbeiiecaaifiidgidbcbgidfgibhjcgjcifaegfgbifcjdgddadgedhbeidgbagiddfbaedhjefgjgfdbcabjcigahfbjcjhdhccjjhhffjcbhjhaeaiifajhjcfaejehjabeeggfaebjeiaacaabijjbeiggjfbdfcfgjcebbehbhcjjggaefgbdhfaigaagfafegbbahfiaabijcffbjddjefcfhhdbbgdjiiabdeaihfccbbfdaifcjhidfijdjdbaebaibfcijhhcddachacfbgddfejeafeddjabbdgcfibgijbcjjijhagddidhhaijiafbaajgejihadjdcdjagbfghjabdhhbbicgceifddgbjeceejbigjfgdedeejbjhdibjghigegjigghghhedhdadgedgbhebedjgjbjjhfedgbhhaebgaeebiajijdhdcacffbfedcbdebidbhieijdcbcdfjgdejehbgecgjcdcfhihgajjggffbaaheiabbbebjcbhdhaajbhicibgajddceaaacgaighhbaacbcbdbdbfacgiaaaaaiedfhcgfgfhhgeeidhgghfbbaadfegchahjcebacbhibbbjbhechefigefhcdcagjjhbhfggjgejfaceeebfibaegfchdabdjgfdjjcacgiifcdcigcfjbegddafefaiaihcbdgdccgiijejdadehgibbagjeajafaggehdajahfcbadjibdgjjcigccbdeiadijejhcjiihcbjijgabhcjfgaiajjigefiddhjcbjjhijbbgbjjeffedffdefbdbhifcidajichgcdchafcfhffifgcfedgafgdhbcedafabhgaejbhdejadiagibiijbdeeggejigadcedbcfbbbcijhjdhdhjceecjjbbfbegegahefigfeahgjbeddaedeaefeehhdhbcdiafhediejdbgaicahgeedfcffjagfgccbbfaajadaeijegfffjiidhgiiadiecbhifeicigjegijecgdjihfbjabigfhbjeejbfghfddehechdjffdbadieibjdddeaejhgijhhihejjcibbaaagbihcagifcjhebhgcjdejgabjjabgbfbbigbjccggbegfcfebfbcjaffhgcjfadaeggcajbgegdejhbfjiehbfgacdgaedeicigeejjgfijjjcgdjaeiadgjhgcdjfgdeagfcfdaicffifgbfdjbebeeadcdbdihjfijiiehbchhbdbbjgcgaejcefacjahcgaeajajejehhbdadihbcjfihaejjbabegbiehjhiccdacjaacdgcbfabgfeifchacbegffhccdgihbbbdcjihibjbjjdbgcfjcehedfjfahajbcfbfdhcgbjdcacbbafejafdciideecfacdhcjdbaigcieghigjfhacfeaifjifchdiggijcfaihhbaifcfjiafhffebbdcfhhacgadhcdcfcieifiifdjhhgjjiicbjjjijahcjijehbghfbbigiaieheiehbdfagijaghhjbfgbbdiajiadbddhbcidahiejehcgcjdegfidhhhcebgfhcifagjdiigicdedfjcifdbcfejifcihjgjeggbfifgbeeejcjfadadafghhhgaifegcajffcceedaejbdidhjajhabigfbaegjiejgaihhahecfccefcfgdhgaaabeiibibgdcgdeajbbjceififfdebdjcigehdgdjbgajhjhigjifejjccheceabcgbafbibiibgiicefefhiceigjhijjafdeiafffgcacjdccadcbecieegfgbfdejiafdhdhhfcjhbfjbehdfdfgcbjijiiddcafaaedcacedfebcafhcibcghhcieihdjdgbeaddgdbjheedjgihffbcbiaccbcgibjgcfagjgcbhhbbaafagefgbfcfdfajecfdhdfjifbffcacfbeccdbfgieegefjdhgdffcfjfajafhggfdjhhfhabgdgfcjhjgjjgicahghegdjddabdiechjdcbaichjijbbgehfgadibgajgdebfgahiidibahabgbcbhfddgefjgjbhbjgjdhhfbccheibbfcebjciafgbgijchchedeahagbcbegjehjgfejhcgihcbiheggeehjcigbjebddcbbedfjieijjjbdafbcdhajchgbbhebeijgheaghjhfidceiediagjhggjchefdjfhbadihaaggdchfhfbdifbibbjahbfadihefeaedgcedgdffdjecdhbhfjebihfgfbcfgieedhcijcfgaiifedebbefbgbgaihiafgafbchggdbceeiiadcbgfbfedihbjidicifdjbggebcdcjbgjfabadfgifiiehfffdfbfidghdhjieiifehiccabechjhggfbcaeccghdchccjhchgcjhdehjjecfbfbgjbabjjdjcgadfaffiicgabheadagadhfchibdbdbfeghdhhcedghdfahcgcihaaaeabfbghijgbbbfjaejhidbaaefgeiihdgdfaeijihfifjdcdjjbjfifdbhdhgeiedfcfcecjeecjcaccjjedefabaaghfbcgdagbdbjggjgjgijcijbbbeddiahahhcbjieabehcjgajcihhdjbgjibbiidigjgifhdididaifcfadcghgfceidhicfegaacideifeighghaggdacdhaiaaffafgchgaffhfjhaddgiaigjefbeabgfeaaibabffiiadgfgcddhfiijahcdccichdeebajhfacajgcihhjccajfdehbaehbdfebcaafiahibjbchcfggicbddbhhbbcfghdehjijhggiidagebfdhaifeghajabbejcgcbigifbedgaagdcccagbeccifgfbdhaidddbdehcafbefcifjjiiibb
]
words.each do |word|
  # valid_substrings = substrings(word)
  # puts valid_substrings
  puts wonderful_substrings(word)
end
