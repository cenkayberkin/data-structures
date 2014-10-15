require 'minitest/spec'
require 'minitest/autorun'

require 'quicksort'

describe Quicksort, 'Testing Quicksort results ' do

  it 'sorts' do
    list = [4, 5, 7, 1, 2, 0]
    sorter = Quicksort.new
    assert [0, 1, 2, 4, 5, 7] == sorter.q_sort(list)
  end

  it 'sorts' do
    list = [0, 1, 2, 3, 4]
    sorter = Quicksort.new
    assert [0, 1, 2, 3, 4] == sorter.q_sort(list)
  end

  it 'sorts' do
    list = [0]
    sorter = Quicksort.new
    assert [0] == sorter.q_sort(list)
  end

  it 'sorts' do
    list = [9, 8, 7, 5, 3, 1]
    sorter = Quicksort.new
    assert [1, 3, 5, 7, 8, 9] == sorter.q_sort(list)
  end
end
