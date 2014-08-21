$digits_to_letters = %w[0 1 abc def ghi jkl mno pqrs tuv wxyz].map do |chars|
  chars.split //
end

def possible_letters number
  return [] if number.empty?

  letters = $digits_to_letters[number[0].to_i]
  return letters if number.size == 1

  sub_letters = possible_letters number[1..-1]
  letters.map do |c|
    sub_letters.map { |word| c + word }
  end.flatten
end


ARGF.each do |line|
  puts possible_letters(line.chomp).sort.join(",")
end