class MergeSort
  def m_sort(list)
    if list.length <= 1
      return list
    end

    middle = list.length / 2
    left = list[0...middle]
    right = list[middle...list.length]

    left = m_sort(left)
    right = m_sort(right)
    return merge(left,right)
  end

  def merge(left, right)
    result = []
    left_id,right_id = 0,0
    while left_id < left.length && right_id < right.length
      if left[left_id] <= right[right_id]
        result.push(left[left_id])
        left.delete_at(left_id)
      else
        result.push(right[right_id])
        right.delete_at(right_id)
      end
    end

    if left.length > 0
      result += left
    end
    if right.length > 0
      result += right
    end

    return result
  end
end


