def echo(something)
  something
end

def shout(something)
  something.upcase
end

def repeat(something, n = 2)
  result = []
  n.times do |i|
    result << something
  end
  result.join(" ")
end

def start_of_word(word, letters)
  word[0, letters]
end

def first_word(text)
  text.split[0]
end

def titleize(text)
  little_words = ["the", "over", "and", "or"]
  words = text.split(" ")
  words.map do |word|
    word.capitalize! unless little_words.include?(word) && word != words[0]
  end
  words.join(" ")
end
