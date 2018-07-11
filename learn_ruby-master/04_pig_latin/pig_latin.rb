#write your code here
def translate(words)

vowels = ['a', 'e', 'o', 'i', 'qu', 'u']
store_consonants = []
word_index = 0

words_arr = words.split("")

words_arr.each do |letter|
    if vowels.include? letter
      #words_arr.join
      break
    else
      # Element to remove and the index that it's at.
      puts letter
      store_consonants.push(letter)
      words_arr.delete_at(words_arr.index(letter))

    end
end

if store_consonants.empty?
    words_arr << "ay"
    words_arr.join
  # Don't do anything
else
  store_consonants << "ay"
  store_consonants.join
  words_arr = words_arr + store_consonants
end

end
