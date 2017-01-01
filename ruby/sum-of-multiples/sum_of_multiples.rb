class SumOfMultiples
  def initialize(*args)
    @args = args
  end

  def to(x)
    multiple= Proc.new { |n| @args.any?{|a| n%a == 0} }
    (0..x-1).select(&multiple).inject(:+)
  end
end
