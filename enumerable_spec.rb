
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

