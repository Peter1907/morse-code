
def decode(string)
  code = { 
    '.-' =>    'a',
    '-...' =>  'b',
    '-.-.' =>  'c',
    '-..' =>   'd',
    '.' =>     'e',
    '..-.' =>  'f',
    '--.' =>   'g',
    '....' =>  'h',
    '..' =>    'i',
    '.---' =>  'j',
    '-.-' =>   'k',
    '.-..' =>  'l',
    '--' =>    'm',
    '-.' =>    'n',
    '---' =>   'o',
    '.--.' =>  'p',
    '--.-' =>  'q',
    '.-.' =>   'r',
    '...' =>   's',
    '-' =>     't',
    '..-' =>   'u',
    '...-' =>  'v',
    '.--' =>   'w',
    '-..-' =>   'x',
    '-.--' =>  'y',
    '--..' =>  'z',
  }
  coded_words = string.split('   ')
  coded_letters = []
  letters = []
  words = []
  result = ""
  coded_words.each do |word|
    coded_letters = word.split(' ')
    coded_letters.each do |letter|
      letters << code[letter]
    end
    words << letters
    letters = []
    coded_letters = []
  end
  words.each do |word|
    result += "#{word.join('')}\s"
  end
  print result.strip
end

print decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
