require 'minitest/spec'
require 'minitest/autorun'

require 'hashtable'

describe Hashtable, 'Testing hastable results ' do
  it 'hastable test, testing linkedlist chaining, 20 elements for 5 spots' do
    h = Hashtable.new(5)
    (1..20).each do |i|
      h.set(i.to_s, "#{i}")
    end
    result = ""
    (1..22).each do |i|
      result += h.get("#{i}") ? h.get("#{i}"):"nil"
    end
    assert result == (1..20).to_a.join("") + "nilnil"
  end

  it 'hastable test, testing adding 235000 words with reversed values' do
    result = true
    hashtable = Hashtable.new(300000)

    f = File.open("/usr/share/dict/words", "r")
    f.each_line do |line|
      hashtable.set(line,line.reverse)
    end
    f.close

    f = File.open("/usr/share/dict/words", "r")
    f.each_line do |line|
      if hashtable.get(line) != line.reverse
        p "Bug found at key: #{line} , value: #{line.reverse}"
        result = false
      end
    end

    f.close
    assert result
  end
end
