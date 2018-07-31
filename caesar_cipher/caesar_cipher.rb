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

      # Upper case - ASCII: 65 -> 90
      if current_letter >= 65 && current_letter <= 90
        if (current_letter + shift_index) / 90 >= 1 # Looping over #
          current_letter = (current_letter + shift_index) % 90 + 64
        else
          current_letter = (current_letter + shift_index) % 90
        end

        new_str << current_letter.chr

        # Lower case - ASCII: 97 -> 122
      elsif current_letter >= 97 && current_letter <= 122
        if (current_letter + shift_index) / 122 >= 1 # Looping Over #
          current_letter = (current_letter + shift_index) % 122 + 122
        else
          current_letter = (current_letter + shift_index) % 122
        end
        new_str << current_letter.chr

        # Neither #
      else
        new_str << current_letter.chr
      end
      letter_index += 1
    end

    #new_str.join()
    word_index += 1
    letter_index = 0 # Reset inner loop's index #

    if word_index < str.length
      new_str << " "
    end
  end

  puts new_str

end

caesar_cipher("What a string!", 5)
