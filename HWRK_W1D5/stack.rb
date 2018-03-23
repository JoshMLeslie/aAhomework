class Stack

  attr_accessor :stack

  def initialize
    @stack= []
  end

  def add(el)
    stack.push(el)
  end

  def remove
    stack.pop
  end

  def show
    puts stack
  end

end # class end
