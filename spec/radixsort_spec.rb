require 'minitest/spec'
require 'minitest/autorun'

require 'radixsort'

describe RadixSort, 'Testing Radix sort results ' do

  it 'sorts' do
    list = [4, 5, 7, 1, 2, 0]
    isorter = RadixSort.new
    assert [0, 1, 2, 4, 5, 7] == isorter.r_sort(list)
  end

  it 'sorts' do
    list = [0, 1, 2, 3, 4]
    isorter = RadixSort.new
    assert [0, 1, 2, 3, 4] == isorter.r_sort(list)
  end

  it 'sorts' do
    list = [0]
    isorter = RadixSort.new
    assert [0] == isorter.r_sort(list)
  end

  it 'sorts' do
    list = [9, 8, 7, 5, 3, 1]
    isorter = RadixSort.new
    assert [1, 3, 5, 7, 8, 9] == isorter.r_sort(list)
  end
end
