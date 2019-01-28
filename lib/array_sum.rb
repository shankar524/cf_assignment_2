class NumberArraySum
  def print_arr_sum(arr)
    return arr unless arr==nil
    begin
      return nil if arr.length==0
      arr.sum
    rescue 
      nil
    end
  end
end