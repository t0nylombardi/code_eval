# AGE DISTRIBUTION
# CHALLENGE DESCRIPTION:

# You're responsible for providing a demographic report for your local school 
# district based on age. To do this, you're going determine which 'category' 
# each person fits into based on their age. The person's age will determine 
# which category they should be in:

# If they're from 0 to 2 the child should be with parents print : 'Still in Mama's arms' 
# If they're 3 or 4 and should be in preschool print : 'Preschool Maniac' 
# If they're from 5 to 11 and should be in elementary school print : 'Elementary school' 
# From 12 to 14: 'Middle school' 
# From 15 to 18: 'High school' 
# From 19 to 22: 'College'
# From 23 to 65: 'Working for the man' 
# From 66 to 100: 'The Golden Years' 
# If the age of the person less than 0 or more than 100 - it might be an alien - print: "This program is for humans"


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