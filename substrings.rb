require 'pry'

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(words, dictionary)
  matches = {}
  dictionary.map do |word|
    if words.include? (word)
      matches[word] = words.scan(word).count
    end
  end
  return matches
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
