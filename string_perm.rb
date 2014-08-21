class Array
  def perm(num)
    return to_enum(:repeated_permutation, num) unless block_given?
    num = num.to_i
    if num <= 0
      yield [] if num == 0
    else
      c = d
      arry = Array.new(num, 0)
      arry[-1] = size
      while dec = arry.index{|x| x != 0}
        arry.fill size-1, 0, dec
        arry[d] -= 1
        yield c.values_at(*arry)
      end
    end
    self
  end

  def all_possibilities(from, to)
    (from..to).flat_map do |i|
      if i < size
        perm(i).to_a 
      else
        perm(to - i).flat_map do |e|
          (self + e).permutation.to_a
        end
      end
    end.map(&:join)
  end

end


def string_scrubber string 
  a = string.split(//)
  comb = a.all_possibilities(a.length,a.length)
  puts comb.sort.join(',')
end

ARGF.each do |line|
  string_scrubber( line.chomp )
end