# frozen_string_literal: true

def substrings(word_list, dictionary)
  substrings = Hash.new(0)
  words = word_list.downcase.split
  words.each do |word|
    dictionary.each do |term|
      substrings[term] += 1 if word.include? term
    end
  end
  substrings
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
