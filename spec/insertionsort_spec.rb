require 'minitest/spec'
require 'minitest/autorun'

require 'insertionsort'

describe InsertionSort, 'Testing insertion sort results ' do

  it 'sorts' do
    list = [4, 5, 7, 1, 2, 0]
    isorter = InsertionSort.new(list)
    assert [0, 1, 2, 4, 5, 7] == isorter.sort
  end

  it 'sorts' do
    list = [0, 1, 2, 3, 4]
    isorter = InsertionSort.new(list)
    assert [0, 1, 2, 3, 4] == isorter.sort
  end

  it 'sorts' do
    list = [0]
    isorter = InsertionSort.new(list)
    assert [0] == isorter.sort
  end

  it 'sorts' do
    list = [9, 8, 7, 5, 3, 1]
    isorter = InsertionSort.new(list)
    assert [1, 3, 5, 7, 8, 9] == isorter.sort
  end
end
