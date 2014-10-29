require 'set'

class Doublelink_list
  attr_accessor :count, :head

  def initialize()
    @num_of_elements = 0
    @head = nil
    @last = nil
    @count = 0
  end

  def append(val)
    new_node = DNode.new(val)
    if @head.nil?
      @head = new_node
      @last = new_node
    else
      @last.next = new_node
      new_node.prev = @last
      @last = new_node
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

  def remove(val)
    return nil if @count == 0
    current = @head

    while current != nil
      if current.value == val
        if current.prev == nil
          @head = current.next
          @head.prev = nil if @head != nil
        else
          current.prev.next = current.next
          current.next.prev = current.prev if @current != nil
        end
        @count -= 1
        break
      end
      current = current.next
    end

    current
  end

  def self.seed(list)
    (1..200).each do |i|
      list.append(rand(100))
    end
  end

  def self.dedub_with_auxilary_ds(list)
    set = Set.new
    current = list.head

    while current != nil
      if set.include? current.value
        list.remove(current.value)
      else
        set.add(current.value)
      end
      current = current.next
    end
    list
  end

  def self.dedub_without_auxilary_ds(list)
    current = list.head
    while current != nil
      runner = current.next if current.next != nil
      while runner != nil
        if current.value == runner.value
          list.remove(runner.value)
        end
        runner = runner.next
      end
      current = current.next
    end
    list
  end
end

class DNode
  attr_accessor :next, :value, :prev
  def initialize(value)
    @value = value
    @next = nil
    @prev = nil
  end
end

dlist1 = Doublelink_list.new()
Doublelink_list.seed(dlist1)

# dlist2 = Doublelink_list.new()
# Doublelink_list.seed(dlist2)

p dlist1.to_s
p dlist1.size
p "***********"
# p dlist2.to_s
# p dlist2.size

list1 = Doublelink_list.dedub_without_auxilary_ds(dlist1)
# list2 = Doublelink_list.dedub_with_auxilary_ds(dlist2)

p list1.to_s
p "***********"
# p list2.to_s
# p "***********"
p "***********"
# p list2.size




