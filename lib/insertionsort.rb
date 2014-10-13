class InsertionSort
  def initialize(list)
    @list = list
  end

  def sort
    (1...@list.length).each do |i|
      tmp = @list[i]
      k = i
      while k > 0 && tmp < @list[k - 1]
        @list[k] = @list[k - 1]
        k -= 1
      end
      @list[k] = tmp
    end
    @list
  end
end
