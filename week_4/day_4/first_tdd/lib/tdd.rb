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