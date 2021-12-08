@morse_dict = { 
    '.-'=>      'a',
    '-...'=>   'b',
    '-.-.'=>   'c',
    '-..'=>    'd',
    '.'=>      'e',
    '..-.'=>   'f',
    '--.'=>    'g',
    '....'=>   'h',
    '..'=>     'i',
    '.---'=>   'j',
    '-.-'=>    'k',
    '.-..'=>   'l',
    '--'=>     'm',
    '-.'=>     'n',
    '---'=>    'o',
    '.--.'=>   'p',
    '--.-'=>   'q',
    '.-.'=>    'r',
    '...'=>    's',
    '-'=>      't',
    '..-'=>    'u',
    '...-'=>   'v',
    '.--'=>    'w',
    '-..-'=>   'x',
    '-.--'=>   'y',
    '--..'=>   'z',
  }

def decode_char(str)
    @morse_dict[str].upcase
end

puts decode_char('...-')

def decode_word(word)
  letters = word.split.map { |str| decode_char(str)}
  letters.join
end

puts decode_word("-- -.--   -. .- -- .")



    
