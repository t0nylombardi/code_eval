# REMOVE CHARACTERS 
# Author: Anthony lombardi

def is_email_valid? string 
	s = string.split(';')

	uri1 = URI.unescape(s[0])
end

ARGF.each do |line|
	if line.empty?
		puts line
	else
		puts is_email_valid?( line.chomp ) ?  "True" :  "False"
	end
end
