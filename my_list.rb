require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4, 5)
p(list.all? { |e| e < 5 })
p(list.any? { |e| e == 6 })
p(list.filter?(&:even?))
