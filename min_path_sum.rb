# Min Path Matrix
# Author: Anthony Lombardi 

def min_path_sum matrix
  rows, cols = matrix.size, matrix.first.size
  table = (0...rows).map { (0...cols).map { 0 } }

  table[rows-1][cols-1] = matrix[rows-1][cols-1]
  for j in 2..cols
    table[rows-1][cols-j] = matrix[rows-1][cols-j] + table[rows-1][cols-j+1]
  end

  for i in 2..rows
    table[rows-i][cols-1] = matrix[rows-i][cols-1] + table[rows-i+1][cols-1]
  end

  for i in 2..rows
    for j in 2..cols
      table[rows-i][cols-j] = matrix[rows-i][cols-j] +
        [table[rows-i+1][cols-j], table[rows-i][cols-j+1]].min
    end
  end
  table[0][0]
end

File.open(ARGV[0]) do |f|
  unless f.eof?
    n = f.readline.to_i
    m = n.times.map { f.readline.split(',').map(&:to_i) }
    puts min_path_sum(m)
  end
end
