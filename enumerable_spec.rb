
require "enumerable"

test_array1 = [2,4,6]
test_array2 = [4,-3,10]

describe "#my_each" do
  it "#each 1 - should work just as" do
    sum = 0
    test_array1.my_each { |v| sum += v }
    expect(sum).to eq(12)
  end
end

describe "#my_each" do
  it "#each 2 - should work just as" do
    sum = 0
    test_array2.my_each { |v| sum += v }
    expect(sum).to eq(11)
  end
end

describe "#my_each_with_index" do
  it "#each_with_index 1 - should work just as" do
    sum = 0
    test_array1.my_each_with_index { |v, i| sum += v + i }
    expect(sum).to eq(15)
  end
end

describe "#my_each_with_index" do
  it "#each_with_index 2 - should work just as" do
    sum = 0
    test_array2.my_each_with_index { |v, i| sum += v + i }
    expect(sum).to eq(14)
  end
end

describe "#my_select" do
  it "#my_select 1 - should work just as" do
    expect(test_array1.my_select { |v| v > 3}).to eq([4,6])
  end
end

describe "#my_select" do
  it "#my_select 2 - should work just as" do
    expect(test_array2.my_select { |v| v > 3}).to eq([4,10])
  end
end

describe "#my_all?" do
  it "#my_all? 1 - should work just as" do
    expect(test_array1.my_all? { |v| v > 0}).to eq(true)
  end
end

describe "#my_all?" do
  it "#my_all? 2 - should work just as" do
    expect(test_array2.my_all? { |v| v > 0}).to eq(false)
  end
end

describe "#my_any?" do
  it "#my_any? 1 - should work just as" do
    expect(test_array1.my_any? { |v| v < 0}).to eq(false)
  end
end

describe "#my_any?" do
  it "#my_any? 2 - should work just as" do
    expect(test_array2.my_any? { |v| v < 0}).to eq(true)
  end
end

describe "#my_none?" do
  it "#my_none? 1 - should work just as" do
    expect(test_array1.my_none? { |v| v < 0}).to eq(true)
  end
end

describe "#my_none?" do
  it "#my_none? 2 - should work just as" do
    expect(test_array2.my_none? { |v| v < 0}).to eq(false)
  end
end





describe "#my_count" do
  it "#my_count 1 - should return the number of items in enum through enumeration." do
    expect(test_array1.my_count).to eq(3)
  end
end

describe "#my_count" do
  it "#my_count 2.1 - should if an argument is given, the number of items in enum that are equal to item are counted." do
    expect(test_array1.my_count(6)).to eq(1)
  end
end


describe "#my_count" do
  it "#my_count 2.2 - should if an argument is given, the number of items in enum that are equal to item are counted." do
    expect(test_array2.my_count(6)).to eq(0)
  end
end

describe "#my_count" do
  it "#my_count 3.1 - should If a block is given, it counts the number of elements yielding a true value." do
    expect(test_array1.my_count { |v| v > 0 }).to eq(3)
  end
end

describe "#my_count" do
  it "#my_count 3.2 - should If a block is given, it counts the number of elements yielding a true value." do
    expect(test_array2.my_count { |v| v > 0 }).to eq(2)
  end
end

describe "#my_map" do
  it "#my_map 1 - should Return a new array with the results of running block once for every element in enum." do
    expect(test_array1.my_map { |v| v + 1}).to eq([3,5,7])
  end
end

describe "#my_map" do
  it "#my_map 2 - should If no block is given, an enumerator is returned instead." do
    expect(test_array1.my_map).to eq([2,4,6])
  end
end

# describe "#my_inject" do
#   it "#my_inject 1 - Combines all elements of enum by applying a binary operation, specified by a block or a symbol that names 
# a method or operator." do
#     expect(test_array1.my_inject(:+)).to eq(12)
#   end
# end

describe "#my_inject" do
  it "#my_inject 2 - If you specify a block, then for each element in enum the block is passed an accumulator value (memo) 
and the element." do
    expect(test_array1.my_inject {|memo, v| memo += v}).to eq(12)
  end
end

describe "#my_inject" do
  it "#my_inject 3" do
    expect(test_array1.my_inject(10) {|memo, v| memo += v}).to eq(22)
  end
end

# describe "#my_inject" do
#   it "#my_inject 4" do
#     expect(test_array1.my_inject(10, :+)).to eq(22)
#   end
# end

describe "#my_inject" do
  it "#my_inject 5" do
    expect(multiply_els([2,4,5])).to eq(40)
  end
end

describe "#my_map2" do
  it "#my_map 1 - should Return a new array with the results of running block once for every element in enum." do
    expect(test_array1.my_map2(Proc.new {|v| v + 1 }) { |v| v + 1}).to eq([4,6,8])
  end
end

describe "#my_map2" do
  it "#my_map 2 - should If no block is given, an enumerator is returned instead." do
    expect(test_array1.my_map2.to_a	).to eq([2,4,6])
  end
end