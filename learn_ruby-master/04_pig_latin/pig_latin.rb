#write your code here
def translate(words)

vowels = ['a', 'e', 'o', 'i', 'qu', 'u']
store_consonants = []
word_index = 0
one_vowel = 0 # Did we get a vowel yet?
upto_delete_index = 0
words_arr = words.split("")
more_than_one = false # Is there more than one word to translate?

if words.include? " "
  puts "There's more than one word"
  more_words_arr = words.split(" ")
  puts more_words_arr
  more_than_one = true
  num_words = more_words_arr.length
end

if more_than_one == false
words_arr.each do |letter|
    puts letter
    if vowels.include? letter
      puts "Here???!"
      one_vowel = 1
      break
    elsif one_vowel == 1
        puts "Here!"
        puts letter
        break
    else
      # Element to remove and the index that it's at.
      puts "IN LOOP!"
      puts letter
      store_consonants.push(letter)
      upto_delete_index = words_arr.index(letter)
    end
end

one_vowel = 0 #Reset
if store_consonants.empty?
    words_arr << "ay"
    words_arr.join
  # Don't do anything
else
  store_consonants << "ay"
  store_consonants.join
  words_arr = words_arr.slice(upto_delete_index+1 .. -1)
  words_arr = words_arr + store_consonants
  words_arr.join
end

# More than one word to translate #
else
  puts "Number of words?"
  puts num_words
  current_word_number = 0
  current_word = []
  more_than_one = false # Reset
  one_vowel = 0
  more_words_arr2 = more_words_arr

  # Currently translating a word #
  while current_word_number < num_words do
    current_word = more_words_arr2[current_word].split()
    current_word.each do |letter|
      if vowels.include? letter
        puts "2 Here???!"
        one_vowel = 1
        break
      elsif one_vowel == 1
          puts "Here2!"
          puts letter
          break
      else
        puts "IN LOOP2!"
        puts letter
        store_consonants.push(letter)
        upto_delete_index = current_word.index(letter)
      end
    end

    one_vowel = 0 #Reset
    if store_consonants.empty?
        more_words_arr2 << "ay"
        more_words_arr2.join
    else
      store_consonants << "ay"
      store_consonants.join
      more_words_arr2 = more_words_arr2.slice(upto_delete_index+1 .. -1)
      words_arr2 = words_arr2 + store_consonants
      words_arr2.join
    end

    current_word_number += 1
  end

end

end
