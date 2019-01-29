class ArrayHighest2Sum

  def calculate(arr)
    arr.sort!
    arr[arr.length-1]+arr[arr.length-2]
  end
end