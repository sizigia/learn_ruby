class Timer
  attr_accessor :seconds

  def initialize
    @timer = 0
  end

  def seconds
    @timer
  end

  def time_string
      @s = @seconds%60
      @m = @seconds%3600/60
      @h = @seconds/3600

      def stringy(param)
        '%02d' % param.to_s
      end
      [@h, @m, @s].map{|i| stringy(i)}.join(':')
  end
end
