class NumberArraySum
  def print_arr_sum(arr)
    return arr.nil? nil
    begin
      return nil if arr.length==0
      return arr.sum
    rescue 
      nil
    end
  end
end