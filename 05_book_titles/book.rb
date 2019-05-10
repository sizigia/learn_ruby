class Book
  attr_accessor :title

  def title
    @title
    def little_word(word)
      ["and", "the", "of", "it", "over", "in", "an", "a"].include?(word)
    end
    @title.capitalize.split(' ').map {|i| 
      if (little_word(i))
        i.downcase
      else
        i.capitalize
      end}.join(' ')
  end
end