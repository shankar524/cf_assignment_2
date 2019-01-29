class UniqueCount 
  def unique(repeating_element_array)
    return_value =Hash.new
    repeating_element_array.each do |element|
      if(return_value.has_key?element)
        return_value[element]+=1
      else
        return_value[element]=1
      end
    end
    return_value
  end
end