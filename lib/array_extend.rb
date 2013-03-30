class Array
  
  def delete_this(item)
    delete_at(index(item))
  end

  def sum(value_to_sum)
    inject(0) do |sum, item_in_array|
      sum + item_in_array.send(value_to_sum)
    end
  end
end
