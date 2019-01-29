class HashAdd
  def add(input_hash)
    return nil unless input_hash!=nil
    
    sum=0
    begin
      input_hash.each_value do |value|
        sum+=value
      end#hash looping ends here
      sum
    rescue
      nil
    end#exception handeling ends here
    
  end#function add ends here
end #class ends here