class ArrayHighest2Sum

def calculate(arr)
  highest =get_highest_value(arr)
  arr.delete(highest)
  second_highest =get_highest_value(arr)
  highest+second_highest
end#calculate method ends here

def get_highest_value(arr)
  arr.max
end
end#class ends here