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
  words_arr = words.split(" ") # A word at each index
  current_word_index = 0
  current_word_letters = []
  new_words_arr = []
  # Stop when we complete iterating through all the letters of the word #
  while current_word_index < num_words do

      current_word_letters = words_arr[current_word_index].split("") # Get Letters
      current_word_letters.each do |letter|
      if vowels.include? letter
        one_vowel = 1
        break
      elsif one_vowel == 1
        break
      else
        store_consonants.push(letter)
        upto_delete_index = current_word_letters.index(letter)
      end
      end

      # Format the word #
      if store_consonants.empty? # Nothing was added, first "if"
        current_word_letters << "ay"
        current_word_letters.join("") # Joining letters
      else
        store_consonants << "ay"
        store_consonants.join
        current_word_letters = current_word_letters.slice(upto_delete_index+1 .. -1)
        current_word_letters = current_word_letters + store_consonants
        current_word_letters.join
      end
      new_words_arr[current_word_index] = current_word_letters
      current_word_index += 1 # Increment counter
      one_vowel = 0 #Reset
      store_consonants.clear
    end
    puts new_words_arr[0]
    puts "UHHHH"
    puts new_words_arr[1]

end

end
