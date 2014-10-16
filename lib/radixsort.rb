class RadixSort
  def getDigit(num, digit_num)
    ((num /  (10 ** digit_num)).floor) % 10
  end

  def createEmptyArrays(size)
    result = []
    size.times do
      result << []
    end
    result
  end

  def split(a_list, digit_num)
    buckets = self.createEmptyArrays(10)
    a_list.each do |i|
      digit = getDigit(i, digit_num)
      buckets[digit] << i
    end
    buckets
  end

  def merge(a_list)
    new_list = []
    a_list.each do |subList|
      new_list += subList
    end
    new_list
  end

  def max_abs(a_list)
    a_list.max_by { |x| x.abs }
  end

  def split_by_sign(a_list)
    buckets = [[], []]
    a_list.each do |i|
      if i < 0
        buckets[0].push(i)
      else
        buckets[1].push(i)
      end
    end
    buckets
  end

  def r_sort(a_list)
    largest_num = max_abs(a_list).abs
    passes = largest_num.to_s.length

    new_list = a_list[0..a_list.length]

    passes.times do |digit_num|
      new_list = merge(split(new_list, digit_num))
    end

    merge(split_by_sign(new_list))
  end
end

