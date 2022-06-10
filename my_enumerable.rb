# Module defined in my_enumerable.rb file
module MyEnumerable
  def all?
    return true unless block_given?

    each { |n| return false unless yield(n) }
    true
  end

  def any?
    return true unless block_given?

    each { |n| return true if yield(n) }
    false
  end

  def filter?
    arr = []
    each { |n| arr.push(n) if yield(n) }
    arr
  end
end
