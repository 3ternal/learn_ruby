class Timer

  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string

    second = @seconds
    minute = (second.to_f/60.0).floor
    hour = (minute.to_f/60.0).floor

    if second > 59
      second = second - 60 * ((second / 60.0).floor)
    end
    if minute > 59
      minute = minute - 60 * ((minute / 60.0).floor)
    end

    second = second.to_s
    minute = minute.to_s
    hour = hour.to_s

    if second.to_i < 10
      second.insert(0, "0")
    end
    if minute.to_i < 10
      minute.insert(0, "0")
    end
    if hour.to_i < 10
      hour.insert(0, "0")
    end

    @time_string = "#{hour}:#{minute}:#{second}"
  end
end

#timer = Timer.new
#timer.time_string = 3800
