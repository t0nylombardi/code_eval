# print loop of odd numbers from 1-99 
# Author: Anthony lombardi

def number n 
	if n.even?
		puts 1
	else
		puts 0
	end
end

ARGF.each do |n|
    puts number( n.to_i )
end