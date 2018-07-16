class Book
  def initialize
    # Current Book default constructor
  end

  attr_reader :title # Getter

  def title=(_string)
    @title = title_function(_string)
  end

  def title_function(_string)
    final_string = []
    current_arr = _string.split(' ')
    special_words = %w[the a an and in the of]
    first_word = false
    index = 0
    while index < current_arr.length
      if index == 0
        if current_arr[0].include? special_words
        end
      end

      index += 1
    end
  end
end
