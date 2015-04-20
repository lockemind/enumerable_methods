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



end
