def translate(text)
  text.downcase!
  words = text.split(" ")
  vowels = ['a', 'e', 'i', 'o', 'u']
  result = []
  words.each do |word|
    if vowels.include?(word[0])
      word += "ay"
    elsif (word.start_with?("qu"))
      consonant1 = word[0]
      consonant2 = word[1]
      2.times { |i| word[0] = '' }
      word += "#{consonant1}#{consonant2}ay"
    elsif (word.start_with?("squ"))
      consonant1 = word[0]
      consonant2 = word[1]
      consonant3 = word[2]
      3.times { |i| word[0] = '' }
      word += "#{consonant1}#{consonant2}#{consonant3}ay"
    elsif !(vowels.include?(word[1])) && ((vowels.include?(word[2])))
      consonant1 = word[0]
      consonant2 = word[1]
      2.times { |i| word[0] = '' }
      word += "#{consonant1}#{consonant2}ay"
    elsif !(vowels.include?(word[1])) && !((vowels.include?(word[2])))
      consonant1 = word[0]
      consonant2 = word[1]
      consonant3 = word[2]
      3.times { |i| word[0] = '' }
      word += "#{consonant1}#{consonant2}#{consonant3}ay"
    elsif !(vowels.include?(word[0]))
      consonant = word[0]
      word[0] = ''
      word += "#{consonant}ay"
    end
    result << word
  end
  result.join(" ")
end
# TODO This code needs serious refactoring
