class QueueEmpty < Exception
end

class Node
  attr_accessor :next, :value
  def initialize(value)
    @value = value
    @next = nil
  end
end

class Queue
  attr_accessor :count

  def initialize()
    @num_of_elements = 0
    @head = nil
    @tail = nil
  end

  def size
    @num_of_elements
  end

  def enqueue(val)
    new_node = Node.new(val)
    if @tail == nil
      @tail = new_node
      @head = new_node
    else
      @tail.next = new_node
      @tail = new_node
    end
    @num_of_elements += 1
  end

  def dequeue()
    raise QueueEmpty, 'Queue is empty' if @head == nil
    result = @head
    @head = @head.next
    @num_of_elements -= 1
    return result
  end

  def to_s
    tmp = @head
    result = ""
    while tmp != nil
      result += "#{tmp.value} "
      tmp = tmp.next
    end
    result[0..-2]
  end
end

