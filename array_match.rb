# array Match. 
# Author: Anthony lombardi

def array_scrubber string 
	s =	string.split(';')
	a = s[1].split(',')
	print a.detect{ |e| a.count(e) > 1 }
end

ARGF.each do |line|
  array_scrubber( line.chomp )
  print "\n"
end
