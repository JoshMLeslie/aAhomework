class Queue
  # FIFO

  attr_accessor :queue

  def initialize
    @queue = []
  end

  def enequeue(el)
    queue.push(el)
  end

  def dequeue
    queue.shift
  end

  def show
    queue
  end

end # class end
