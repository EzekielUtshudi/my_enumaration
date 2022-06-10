$LOAD_PATH << '.'
require 'my_enumerable'

# MyList
class MyList
  include MyEnumerable

  def initialize(list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new([1, 2, 3, 4])

# Test #all?
puts(list.all? { |e| e < 5 })
puts(list.all? { |e| e > 5 })

# Test #any?
puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })
