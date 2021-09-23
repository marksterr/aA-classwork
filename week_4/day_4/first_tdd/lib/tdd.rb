def my_uniq(arr)
  result = []
  arr.each { |el| result << el if !result.include?(el) }
  return result
end

class Array

  def two_sum
    return nil if self == []
    
    result = []
    (0..self.size - 2).each do |i|
      (i + 1..self.size - 1).each do |j|
        result << [i, j] if self[i] + self[j] == 0
      end
    end

    return result
  end

end


def my_transpose(arr)
  transposed = Array.new(arr.length) { Array.new(arr.length, nil) }
  arr.each.with_index do |row, row_i|
    row.each.with_index do |item, col_i|
      transposed[col_i][row_i] = item
    end
  end
  transposed
end


def stock_picker(arr)
  result = []
  profit = 0
  (0..arr.size - 2).each do |i|
    (i + 1..arr.size - 1).each do |j|
      if (arr[j] - arr[i]) > profit
        temp = [i, j]
        profit = (arr[j] - arr[i])
        result = temp
      end
    end
  end
  return result
end


