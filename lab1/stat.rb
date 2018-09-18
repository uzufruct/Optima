require 'csv'

class Stat

  def initialize(file, line)
    @data = CSV.read(file)[line - 1].collect {|i| i.to_f}
  end

  def compute
    @mean = (@data.max + @data.min) / 2.0
    puts 'Which statistical parameter would you like to compute?
      1 - max value
      2 - min value
      3 - mean value
      4 - sample variance'
    puts '->'
    choice = gets.chomp
    case choice
    when '1'
      @data.max
    when '2'
      @data.min
    when '3'
      @mean
    when '4'
      sum = 0.0
      for i in @data
        sum += (i - @mean) * 2
      end
      sum / (@data.length - 1)
    end
  end

  def handler
    begin
      puts compute
      puts 'Would you like to continue (y/n)?'
      sel = gets.chomp
    end until sel.downcase == 'n'
  end

end

path = 'C:\Users\Nikita.Sidorov\Study\Optima\lab1\data.csv'
obj = Stat.new(path, 2)
puts obj.handler