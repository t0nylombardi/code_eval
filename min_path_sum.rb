def min_path_sum matrix
  rows, cols = matrix.size, matrix.first.size

  # Stores minimum path sum from row i, column j to bottom right of matrix
  table = (0...rows).map { (0...cols).map { 0 } }

  # Base case: Along bottom row, we can only go right (so min path is always to
  # the right)
  table[rows-1][cols-1] = matrix[rows-1][cols-1]
  for j in 2..cols
    table[rows-1][cols-j] = matrix[rows-1][cols-j] + table[rows-1][cols-j+1]
  end

  # Base case: Along rightmost column, we can only go down
  for i in 2..rows
    table[rows-i][cols-1] = matrix[rows-i][cols-1] + table[rows-i+1][cols-1]
  end

  # Recursive case: Minimum path from current location is the minimum of the sum
  # of the bottom or the right paths
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