# REMOVE CHARACTERS 
# Author: Anthony lombardi

def string_scrubber string 
	s =	string.split(',')
	rchar =	s[1].strip.to_s
	s[0].gsub(/[#{rchar}]/,'')
end

ARGF.each do |line|
    puts string_scrubber( line )
end