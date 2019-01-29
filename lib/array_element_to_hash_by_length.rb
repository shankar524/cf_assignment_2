class ArrayElementToHash
  def compute arr
    return_hash =Hash.new
    arr.each do |item|
      return_hash.store(item, item.length)
    end
    return_hash
  end
end