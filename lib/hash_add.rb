class HashAdd
  def add(input_hash)
    return nil if input_hash.nil?
    
    sum=0
    begin
      input_hash.each_value do |value|
        sum+=Integer(value) 
      end  
    rescue
      nil
    end

    sum
  end#function add ends here
end #class ends here