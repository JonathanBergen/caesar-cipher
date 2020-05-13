characterList = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l",
   "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
puts "enter a word"
theInitialWord = gets.chomp.split("")
puts "enter a offset"
offset = gets.chomp.to_i
if offset > 26
  offset %= 26
elsif offset < -26
  offset %= 26
end
finalWord = []
theInitialWord.each do |char|
  if characterList.include?(char) == false && characterList.include?(char.downcase) == false
    finalWord << char
  elsif char === char.upcase
    char = char.downcase
    initialIndex = characterList.find_index(char)
    finalIndex = initialIndex + offset
    if finalIndex > 26
      finalIndex -= 26
    elsif finalIndex < 0
      finalIndex += 26
    end
    finalWord << characterList.fetch(finalIndex).upcase
  elsif char === char.downcase
    initialIndex = characterList.find_index(char)
    finalIndex = initialIndex + offset
    if finalIndex > 26
      finalIndex -= 26
    elsif finalIndex < 0
      finalIndex += 26
    end
    finalWord << characterList.fetch(finalIndex)
  end
end
puts finalWord.join("")
