# REMOVE CHARACTERS 
# Author: Anthony lombardi

def is_at? input
	answer = ""
	if input < 0 || input > 100
		answer = "This program is for humans"
	else 
		case input
		when 0..2
			answer = "Home"
		when 3..4
			answer = "Preschool"
		when 5..11
			answer = "Elementary school"
		when 12..14
			answer = "Middle school"
		when 15..18
			answer = "High school"
		when 19..22
			answer = "College"
		when 23..65
			answer = "Work"
		when 66..100
			answer = "Retirement"
		end
	end
end

ARGF.each do |line|
	if line.empty?
		puts line
	else
		puts is_at?( line.chomp.to_i ) 
	end
end