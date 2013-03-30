require 'bookset'

class Sale

  VOLUMES = [:one, :two, :three, :four, :five] 
  
  attr_reader :booksets

  def initialize(cart)
    @cart = cart
    make_booksets
  end

  def make_booksets
    @booksets = []
    @booksets << make_one_bookset until @cart.empty?
  end

  def make_one_bookset
    bookset = Bookset.new
    VOLUMES.each do |volume|
      if @cart.include?(volume)
        bookset << volume
        @cart.delete_this(volume)
      end
    end
    bookset 
  end

  def total
    @booksets.sum(:bookset_price)
  end
end

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
