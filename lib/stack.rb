class StackEmpty < Exception
end

class Node
  attr_accessor :next, :value
  def initialize(value)
    @value = value
    @next = nil
  end
end

class Stack
  attr_accessor :count

  def initialize()
    @num_of_elements = 0
    @head = nil
  end

  def push(val)
    new_val = Node.new(val)
    if @head == nil
      @head = new_val
    else
      new_val.next = @head
      @head = new_val
    end
    @num_of_elements += 1
  end

  def pop()
    raise StackEmpty, 'Stack is empty' if @head == nil
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
