require 'bookset'
require 'array_extend'

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
    bookset = Bookset.new(@cart.uniq)
    bookset.each do |book|
      @cart.delete_this(book)
    end
    bookset 
  end

  def total
    @booksets.sum(:bookset_price)
  end
end

