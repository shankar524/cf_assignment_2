class ArrayHighest2Sum

def calculate(arr)
  arr.sort!
  arr[arr.length-1]+arr[arr.length-2]
end#calculate method ends here

def get_highest_value(arr)
  arr.max
end
end#class ends here