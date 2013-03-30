class Sale

  BOOK_PRICE = 8
  NO_DISCOUNT = 1
  FIVE_PERCENT_DISC = 0.95
  TEN_PERCENT_DISC = 0.9

  def initialize(cart)
    @cart = cart
    @booksets = [@cart]
  end

  def total
    @booksets.inject(0) do |sum, this_set|
      sum + base_price(this_set) * discount(this_set)
    end
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
