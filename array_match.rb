# ARRAY ABSURDITY
# CHALLENGE DESCRIPTION:

# Imagine we have an immutable array of size N which we know to be filled with 
# integers ranging from 0 to N-2, inclusive. Suppose we know that the array contains 
# exactly one duplicated entry and that duplicate appears exactly twice. Find the 
# duplicated entry. 
# (For bonus points, ensure your solution has constant space and time proportional to N)


def array_scrubber string 
	s =	string.split(';')
	a = s[1].split(',')
	print a.detect{ |e| a.count(e) > 1 }
end

ARGF.each do |line|
  array_scrubber( line.chomp )
  print "\n"
end
