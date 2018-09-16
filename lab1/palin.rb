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
puts 'Is palindrome: ' + palin(str)
