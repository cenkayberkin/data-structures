class HashListNode
  attr_accessor :next, :value, :key
  def initialize(key,value)
    @value = value
    @next = nil
    @key = key
  end
end

class HashLinklist
  attr_accessor :head

  def initialize(head = nil)
    @head = head
  end

  def insert(new_node)
    if @head.nil?
      @head = new_node
    else
      new_node.next = @head
      @head = new_node
    end
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

  def search(key)
    tmp = @head
    while tmp != nil
      if tmp.key == key
        break
      end
      tmp = tmp.next
    end
    tmp
  end
end

class Hashtable
  def initialize(size)
    @array = Array.new(size)
    @size = size
  end

  def hash(text)
    length = text.length
    sum = 0
    text = text.reverse
    (0...length).each do |i|
      sum += text[i].ord * (127 ** i)
    end
    sum
  end

  def getIndex(text)
    hash(text) % @size
  end

  def get(key)
    result = nil
    if @array[getIndex(key)] != nil
      list = HashLinklist.new(@array[getIndex(key)])
      if list.search(key)
        result = list.search(key).value
      end
    end
    result
  end

  def set(key, val)
    # first time creating list.
    if @array[getIndex(key)] == nil
      list = HashLinklist.new
      list.insert(HashListNode.new(key,val))
      @array[getIndex(key)] = list.head
    else
      # regenerate list by using saved head.
      list = HashLinklist.new(@array[getIndex(key)])

      if list.search(key).nil?
        list.insert(HashListNode.new(key,val))
      else
        # same key exits so update key value.
        list.search(key).value = val
      end
      @array[getIndex(key)] = list.head
    end
  end
end


