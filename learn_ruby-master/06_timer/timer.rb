class Timer
  def initialize
    @seconds = 0
  end

  def seconds
    @seconds = 0
  end

  def seconds=(_seconds)
    @seconds = _seconds
  end

  def time_string
    output_str = ""
    _hours = @seconds / 3600
    _minutes = (@seconds % 3600) / 60
    _seconds = (@seconds % 3600) % 60

    output_str << format_string(_hours)
    output_str << ":"
    output_str << format_string(_minutes)
    output_str << ":"
    output_str << format_string(_seconds)
  end

  def format_string(_data)
    if _data >= 10
      return _data.to_s
    else
      return "0" + _data.to_s
    end
  end
end
