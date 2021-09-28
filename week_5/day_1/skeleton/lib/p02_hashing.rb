class Integer
  # Integer#hash already implemented for you
end

class Array
  def hash
    sum = 0
    self.each_with_index do |el,i| 
      sum += (el + i).hash
    end
    sum
  end
end

class String
  def hash
    
  self.split('').map{|e|e.to_i}.hash
 
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    0
  end
end
