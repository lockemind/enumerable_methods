module Enumerable

  def my_each
    return self unless block_given?
    for v in self
      yield v
    end
  end

  def my_each_with_index
    return self unless block_given?
    i = 0
    for v in self
      yield v, i
      i += 1
    end
  end

  def my_select
    return self unless block_given?
    l = []
    for v in self
      if yield v
        l << v
      end
    end
    l
  end

  def my_all?
    return self unless block_given?
    for v in self
      if ! yield v
        return false
      end
    end
    true
  end

  def my_any?
    return self unless block_given?
    for v in self
      if yield v
        return true
      end
    end
    false
  end

  def my_none?
    return self unless block_given?
    for v in self
      if yield v
        return false
      end
    end
    true
  end


  def my_count(arg = nil)

    count = 0
    for v in self
      if block_given?
        count += 1 if yield v
      elsif arg == nil
        count += 1
      else
        count += 1 if v == arg
      end
    end
    count
  end

  def my_map
    return self unless block_given?

    l = []
    for v in self
      l << yield(v)
    end
    l
  end

  # missing the feature that accepts a symbol
  def my_inject(arg = 0)
    self.my_each do |n|
      arg = (yield arg, n)
    end
    arg
  end

   # Third iteration of my_map, method accepts a proc or a block but only executes
   # if both are provided, otherwise the default enum is returned. The specification
   # was ambiguous about the exact interaction of the block & proc, so I simply nested
   # them. credit to: ThothLogos
   def my_map2(proc = nil)

      result = []

      if !proc.nil? && block_given?
         for i in self
            result << proc.call(yield(i)); end
         return result; end

      return self.to_enum
   end
end

def multiply_els arg
  arg.my_inject(1) { |memo,v|
    memo * v
  }
end

