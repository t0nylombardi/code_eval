# REMOVE CHARACTERS 
# Author: Anthony lombardi

def is_email_valid? string 
	(string =~ /^([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+$/i)
end

ARGF.each do |line|
	if line.empty?
		puts line
	else
		puts is_email_valid?( line.chomp ) ?  "True" :  "False"
	end
end
