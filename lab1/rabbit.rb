class Rabbit
  def initialize(n)
    @months = n
  end

  def computeRabbits
    x1 = 0
    x2 = 1
    for i in (0..@months)
      sum = x1 + x2
      x1 = x2
      x2 = sum
      puts 'Month #' + i.to_s + ' Rabbit couples: ' + sum.to_s
    end
  end
end

puts 'Input number of months ->'
n = gets.chomp.to_i
obj = Rabbit.new(n)
obj.computeRabbits