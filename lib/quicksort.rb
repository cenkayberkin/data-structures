class Quicksort
  def q_sort(list)
    less = []
    pivotList = []
    more = []
    if list.length <= 1
      return list
    else
      pivot = list[0]
      list.each do |i|
        if i < pivot
          less.push(i)
        elsif i > pivot
          more.push(i)
        else
          pivotList.push(i)
        end
      end
      return q_sort(less) + pivotList + q_sort(more)
    end
  end
end
