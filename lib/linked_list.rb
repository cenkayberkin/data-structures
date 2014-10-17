class Link_list
  attr_accessor :count

  def initialize()
    @num_of_elements = 0
    @head = nil
    @last = nil
    @count = 0
  end

  def append(val)
    new_node = Node.new(val)
    if @head.nil?
      @head = new_node
      @last = new_node
    else
      @last.next = new_node
      @last = new_node
    end
    @count += 1
  end

  def insert(new_node)
    if @head.nil?
      @head = new_node
      @last = new_node
    else
      new_node.next = @head
      @head = new_node
    end
    @count += 1
  end

  def to_s
    result = ""
    tmp = @head
    while tmp != nil
      result += "#{tmp.value}, "
      tmp = tmp.next
    end
    result[0...-2]
  end

  def size
    @count
  end

  def search(val)
    tmp = @head
    while tmp != nil
      if tmp.value == val
        break
      end
      tmp = tmp.next
    end
    tmp
  end

  def remove(node)
    return nil if @count == 0

    current = @head
    prev = nil

    while current != nil
      if current.value == node.value
        if prev.nil?
          @head = current.next
        else
          prev.next = current.next
        end
        break
      end

      prev = current
      current = current.next
    end
    current
  end

end

class Node
  attr_accessor :next, :value
  def initialize(value)
    @value = value
    @next = nil
  end
end

