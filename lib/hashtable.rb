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
    @array[getIndex(key)]
  end

  def set(key, val)
    @array[getIndex(key)] = val
  end
end

h = Hashtable.new(100)
h.set("cekn", "benim adim cenk senin adin ne")
h.set("ahmet", "benim adim ahmet senin adin ne")
h.set("kazim", "benim adim kazim senin adin ne")
h.set("ali", "benim adim ali senin adin ne")

p h.get("cekn")

