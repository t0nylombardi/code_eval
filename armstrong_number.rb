# ARMSTRONG NUMBERS
# CHALLENGE DESCRIPTION:

# An Armstrong number is an n-digit number that is equal to the sum of 
# the n'th powers of its digits. Determine if the input numbers are Armstrong numbers.

def is_an number 
	num = []
	sum = 0
	digits = number.to_s.split(//).map(&:to_i)
  digits.each do |s|
  	num <<	s**digits.size
  end
  num.each { |a| sum+=a }
  sum==number.to_i ? "True" : "False"
end

ARGF.each do |line|
  puts is_an( line.chomp ) 
end