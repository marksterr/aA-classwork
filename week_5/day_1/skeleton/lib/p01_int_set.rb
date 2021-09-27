
class MaxIntSet
  attr_accessor :store
  def initialize(max)
    @store=Array.new(max,false)
  end

  def insert(num)
    raise "Out of bounds" if num >= @store.length ||num <0
    @store[num] = true
  end

  def remove(num)
    @store[num] = false
  end

  def include?(num)
    return true if @store[num] != false
    return false
  end

  private

  def is_valid?(num)
  end

  def validate!(num)
  end
end


class IntSet
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
    @store[num % @store.length] << num
  end

  def remove(num)
    if @store[num % @store.length].include?(num)
      @store[num % @store.length].delete(num)
    end
  end

  def include?(num)
    return true if @store[num % @store.length].include?(num)
    return false
  end

  private

  def [](num)
    # @store[num % @store.length]
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
      if !@store[num % @store.size].include?(num)
      @store[num % @store.length] << num
      @count +=1
    end
     if @count > num_buckets
      resize!
     end
  end

  def remove(num)
     if @store[num % @store.length].include?(num)
      @store[num % @store.length].delete(num)
      @count -=1
    end
  end

  def include?(num)
    return true if @store[num % @store.length].include?(num)
    return false
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
    elements = @store.flatten
    @store = Array.new(num_buckets * 2){[]}
    @count = 0
    elements.each {|e| insert(e)}

    
  #  while @count >= @store.length
  #   elements= []
  #     @store.each do |sub|
  #       until sub.empty?
  #         elements << sub.pop
  #       end
  #     end
  #     temp = Array.new(@store.length){[]}
  #     @store.concat(temp)
  #     until elements.empty?
  #       i =0
  #      insert(elements.pop)
  #       i += 1
  #     end
  #   end
  end
end
