class Sale

  BOOK_PRICE = 8
  NO_DISCOUNT = 1
  FIVE_PERCENT_DISC = 0.95
  TEN_PERCENT_DISC = 0.9
  VOLUMES = [:one, :two, :three, :four, :five] 
  
  attr_reader :booksets

  def initialize(cart)
    @cart = cart
    @booksets = []
    @booksets << make_one_bookset until @cart.empty?
  end

  def make_one_bookset
    this_set = []
    VOLUMES.each do |volume|
      if @cart.include?(volume)
        this_set << volume
        @cart.delete_at(@cart.index(volume))
      end
    end
    this_set
  end

  def total
    @booksets.inject(0) do |sum, bookset|
      sum + bookset_price(bookset)
    end
  end

  def bookset_price(bookset)
    base_price(bookset) * discount(bookset)
  end

  def base_price(bookset)
    bookset.count * BOOK_PRICE
  end

  def discount(bookset)
    case bookset.uniq.count
    when 2
      FIVE_PERCENT_DISC
    when 3
      TEN_PERCENT_DISC
    else
      NO_DISCOUNT
    end
  end

end
