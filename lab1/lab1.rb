puts 'Hello, World!'

class Heat
  def initialize()
    puts 'Input temperature value:'
    @temp = gets.chomp.to_f
    puts 'Input temperature\'s scale:'
    @base = gets.chomp
    puts 'Input new scale:'
    @baseto = gets.chomp
  end

  def convert()
    type = @base + @baseto
    case type
    when 'CK'
      @temp + 273.15
    when 'CF'
      @temp * 1.8 + 32
    when 'FC'
      (@temp - 32) * 0.56
    when 'FK'
      (@temp - 32) * 0.56 + 273.15
    when 'KF'
      1.8 * (@temp - 273.15) + 32
    when 'KC'
      @temp - 273.15
    end
  end

end

obj = Heat.new
puts obj.convert

def palin(word)
  answer = 'YES'
  for i in 0..(word.length / 2)
    if !(word[i] == word[word.length - i - 1])
      answer = 'NO'
      break
    end
  end
  return answer
end

puts 'Word to check:'
str = gets.chomp
puts 'Is palindrome: ' + palin(str.downcase)
