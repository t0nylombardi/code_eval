def is_valid?(string)
	string =~ (/[a-zA-Z1-9_]+@+[a-zA-Z1-9_]+.[a-z]+/)
end

ARGF.each do |line|
  puts is_valid?(line) ? true : false
end