require 'minitest/spec'
require 'minitest/autorun'

require 'mergesort'

describe MergeSort, 'Testing Merge sort results ' do

  it 'sorts' do
    list = [4, 5, 7, 1, 2, 0]
    isorter = MergeSort.new
    assert [0, 1, 2, 4, 5, 7] == isorter.m_sort(list)
  end

  it 'sorts' do
    list = [0, 1, 2, 3, 4]
    isorter = MergeSort.new
    assert [0, 1, 2, 3, 4] == isorter.m_sort(list)
  end

  it 'sorts' do
    list = [0]
    isorter = MergeSort.new
    assert [0] == isorter.m_sort(list)
  end

  it 'sorts' do
    list = [9, 8, 7, 5, 3, 1]
    isorter = MergeSort.new
    assert [1, 3, 5, 7, 8, 9] == isorter.m_sort(list)
  end
end
