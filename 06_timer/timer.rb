class Timer
  #write your code here
  attr_accessor :seconds
  attr_accessor :time_string

  def initialize
    @seconds = 0
  end

  def time_string
    Time.at(@seconds).utc.strftime('%H:%M:%S')
  end

  def padded(time_in_seconds)
    time = time_in_seconds.to_s
    if time.length == 1
      time = "0#{time}"
    else
      time = "#{time}"
    end

    time
  end
end

@timer = Timer.new
puts @timer.padded('0')
puts @timer.padded('1')
puts @timer.padded('12')
