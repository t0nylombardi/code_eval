  def a_flatten(a)
    a_temp =[]
    a.each do |x|
      if x.class == "array"
        a_flatten(x)
      else
        a_temp << x
      end
    end
    a_temp
  end

arry = [[1,2],[1,3,4,["x","y","z"],5],6,"b",8,"a"]


puts a_flatten(arry).join(" ")
