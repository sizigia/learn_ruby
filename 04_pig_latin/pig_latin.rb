def translate(phrase)
  vowels = ['a', 'e', 'i', 'o', 'u']
  consonants = ('a'..'z').to_a.delete_if {|x| vowels.include?(x)}

  def is_letter(word, index, array)
    letter = word[index]
    array.include?(letter)
  end

  def consonant_case(word, index)
    i_next = index + 1
    first_letter = word.slice(0..index)
    word.slice(i_next..word.length) + first_letter + 'ay'
  end

    words = phrase.downcase.split(' ')
  
  words.map {|wordy|
    if is_letter(wordy, 0, vowels)
    wordy + 'ay'
  elsif is_letter(wordy, 0, consonants)
    if is_letter(wordy, 1, consonants) || wordy.slice(0..1) == 'qu'
      if is_letter(wordy, 2, consonants) || wordy.slice(0..2) == 'squ'
        consonant_case(wordy, 2)
      else 
        consonant_case(wordy, 1)
      end
    else
      consonant_case(wordy, 0)
    end
  end
}.join(' ')
end