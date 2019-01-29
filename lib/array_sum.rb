class NumberArraySum
  def print_arr_sum(arr)
    begin
      arr.nil? || arr.empty? ? nil : arr.reduce(0, :+)
    rescue
      nil
    end
  end
end