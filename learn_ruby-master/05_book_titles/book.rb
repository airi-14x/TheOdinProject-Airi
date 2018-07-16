class Book

  attr_reader :title # Getter

  def title=(_string)
    @title = title_function(_string)
  end

  def title_function(_string)
    final_string = []
    new_string = ""
    current_arr = _string.split(' ')
    special_words = Set["the", "a", "an", "and", "in", "the", "of"]
    first_word = false
    index = 0
    #puts "*******"
    #puts current_arr
    #puts current_arr.length
    #puts special_words.include? current_arr[0]
    #puts !(special_words.include? current_arr[1])
    while index < current_arr.length
      #puts index
      if index == 0
        if special_words.include? current_arr[0]
          if !(special_words.include? current_arr[1]) == true # Doesn't contain special word
            first_word = true
          end
        end
      end

      if (first_word == true)
        final_string << current_arr[0].capitalize
        final_string << current_arr[1].capitalize
        index = 1
        first_word = false # Finished adding the first two words
      else
        if (special_words.include? current_arr[index]) == false
          final_string << current_arr[index].capitalize
        else
          final_string << current_arr[index]
        end
      end
      #puts index
      index += 1
    end

    index = 0
    while index < final_string.length
      new_string += final_string[index]

      if index + 1 < final_string.length
        new_string += " "
      end
      index += 1
    end
    return new_string
  end
end
