require 'pry-byebug'

def substrings(words, dictionary)
  #   p words
  #   binding.pry
  #   p dictionary

  frequency = Hash.new(0)

  #   dictionary.each do |word|
  #     count = words.downcase.scan(word).count # .count can be replaced with .length or .size
  #     frequency[word] = count unless count == 0
  #   end

  ##################################

  dictionary.each do |key|
    words.split(' ').each do |word|
      if word.downcase.include?(key)
        frequency.key?(key) ? frequency[key] += 1 : frequency[key] = 1
      end
    end
  end

  ##################################

  #   dictionary.each do |word|
  #     frequency[word] += 1 if words.downcase.include?(word)
  #   end
  p frequency
end

# a = "cruel world"
# a.scan(/\w+/)        #=> ["cruel", "world"]
# a.scan(/.../)        #=> ["cru", "el ", "wor"]
# a.scan(/(...)/)      #=> [["cru"], ["el "], ["wor"]]
# a.scan(/(..)(..)/)   #=> [["cr", "ue"], ["l ", "wo"]]
