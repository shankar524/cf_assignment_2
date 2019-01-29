class HashAdd
  def add(input_hash)
    begin
      input_hash.values.reduce(0, :+) 
    rescue 
      nil
    end
  end
end 