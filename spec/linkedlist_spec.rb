require 'minitest/spec'
require 'minitest/autorun'

require 'linked_list'

describe Link_list, 'Testing linked list results ' do
  it 'list to_s method' do
    list = Link_list.new
    list.insert(Node.new(19))
    list.insert(Node.new(5))
    list.insert(Node.new(2))
    list.insert(Node.new(16))

    assert "16, 2, 5, 19" == list.to_s
  end

  it 'list removal' do
    list = Link_list.new
    list.insert(Node.new(19))
    list.insert(Node.new(5))
    list.insert(Node.new(2))
    list.insert(Node.new(16))

    list.remove(Node.new(5))
    assert "16, 2, 19" == list.to_s
  end

  it 'list insertion' do
    list = Link_list.new
    list.insert(Node.new(19))
    list.insert(Node.new(5))
    list.insert(Node.new(2))
    list.insert(Node.new(16))

    list.insert(Node.new(25))
    assert "25, 16, 2, 5, 19" == list.to_s
  end

  it 'list search' do
    list = Link_list.new
    list.insert(Node.new(19))
    list.insert(Node.new(5))
    list.insert(Node.new(2))
    list.insert(Node.new(16))

    assert nil == list.search(25)
  end

  it 'list search' do
    list = Link_list.new
    list.insert(Node.new(19))
    list.insert(Node.new(5))
    list.insert(Node.new(2))
    list.insert(Node.new(16))

    assert 4 == list.size
  end

end
