class Book
  def title=(title)
    @title = self.titleize(title)
  end

  def title
    @title
  end

  def titleize(text)
    little_words = ["the", "over", "and", "or", "in", "of", "a", "an"]
    words = text.split(" ")
    words.map do |word|
      word.capitalize! unless little_words.include?(word) && word != words[0]
    end
    words.join(" ")
  end
end
