def string_recover string 
	s =	string.split(';')
	sentence = s[0].split(" ")
	sequence =	s[1].split(" ")
	len = sentence.length
	total = len*(len-1)/2
	sorted = []

	count = 0
	l = len
	l.times do 
		j = sequence[count]
		sorted.insert(j.to_i,sentence[count]) 
		total -= j.to_i
		count += 1	
	end
	sorted[total] = sentence[count.to_i+1]
	puts sorted.join(" ")
	
end


s1 = "programs Manchester The written ran Mark 1952 1 in Autocode from;6 2 1 7 5 3 11 4 8 9"

 string_recover( s1.chomp )
