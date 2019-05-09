def echo(phrase)
  phrase
end

def shout(phrase)
  phrase.upcase
end

def repeat(phrase, number = 2)
  [phrase] * number * ' '
end

def start_of_word(word, letters)
  word[0..(letters - 1)]
end

def first_word(phrase)
  phrase.split[0]
end

def titleize(title)
  def little_word(x)
    ["and", "the", "of", "it", "over"].include?(x)
  end

  words = title.split
  words.length.times do |i|
    (little_word(words[0]))?
      words[0].capitalize! :
    (little_word(words[i]))?
      words[i].downcase :
      words[i].capitalize!
    end
  words.join(' ')
end