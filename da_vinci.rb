def string_recover string 
	s =	string.split(';')

	puts s[1].rindex(/[s[1]]/)
end


s1 = "O draconia;conian devil! Oh la;h lame sa;saint!"

 string_recover( s1 )
