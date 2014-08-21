begin

  maxi = -1000
  arr = []
  start = 1; stop = 999;
  stop.downto(start) do |i|
    i.downto(start) do |j|
      nm = i*j
      nms = nm.to_s
      if nms == nms.reverse
        if nm > maxi
          maxi = nm
        end
      end
    end
  end
  puts maxi
	
end