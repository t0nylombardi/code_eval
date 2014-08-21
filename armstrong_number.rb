# REMOVE CHARACTERS 
# Author: Anthony lombardi

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