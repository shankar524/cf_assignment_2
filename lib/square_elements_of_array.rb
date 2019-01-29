class SquareArrayElements 
  def square arr
    #define empty array which stores squared elements of input array
    squared_array=[]
    arr.each do |element|
      element*=element
      squared_array.push(element)
    end
    squared_array
  end
end