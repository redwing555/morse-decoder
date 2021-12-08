@morse_dict = {
  '.-' => 'a',
  '-...' => 'b',
  '-.-.' => 'c',
  '-..' => 'd',
  '.' => 'e',
  '..-.' => 'f',
  '--.' => 'g',
  '....' => 'h',
  '..' => 'i',
  '.---' => 'j',
  '-.-' => 'k',
  '.-..' => 'l',
  '--' => 'm',
  '-.' => 'n',
  '---' => 'o',
  '.--.' => 'p',
  '--.-' => 'q',
  '.-.' => 'r',
  '...' => 's',
  '-' => 't',
  '..-' => 'u',
  '...-' => 'v',
  '.--' => 'w',
  '-..-' => 'x',
  '-.--' => 'y',
  '--..' => 'z'
}

def decode_char(str)
  @morse_dict[str].upcase
end

def decode_word(word)
  letters = word.split.map { |str| decode_char(str) }
  letters.join
end

def decode_message(message)
  words = message.split('   ').map { |word| decode_word(word) }
  words.join(' ')
end

puts 'Enter a valid morse message : '
message = gets.chomp
puts "this morse message translates to  #{decode_message(message)}"
# A BOX FULL OF RUBIES
