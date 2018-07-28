def caesar_cipher(str, shift_index)
  # Upper case - ASCII: 65 -> 90
  # Lower case - ASCII: 97 -> 122

  new_str = "" # New String with shifted index
  str = str.split(" ")
  puts str
  word_index = 0 # Index for str's words.
  letter_index = 0 # Index for each of str word's letter.

  # Result: new_str with shifted letters.
  while word_index < str.length do

    # Shifting each letter
    while letter_index < str[word_index].length do
      # Getting character's ASCII .ord
      # Shift then .chr to convert back
      #puts str[word_index][letter_index]
      current_letter = str[word_index][letter_index].ord

      puts current_letter
      if current_letter >= 65 && current_letter <= 90
        current_letter = (current_letter + shift_index) % 90 + 64
        new_str << current_letter.chr
        puts current_letter
      elsif current_letter >= 97 && current_letter <= 122
        current_letter = (current_letter + shift_index) % 122 + 96
        new_str << current_letter.chr
        puts current_letter
      else
        new_str << current_letter.chr
        puts current_letter
      end
      letter_index += 1
    end

    #new_str.join()
    word_index += 1
    letter_index = 0 # Reset inner loop's index #

    if word_index + 1 < str.length
      new_str << " "
    end
  end

  puts new_str

end

caesar_cipher("What a string!", 5)
