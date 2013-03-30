class Sale

  BOOK_PRICE = 8
  NO_DISCOUNT = 1
  FIVE_PERCENT_DISC = 0.95
  TEN_PERCENT_DISC = 0.9

  def initialize(cart)
    @cart = cart
  end

  def total
    base_price * discount
  end

  def base_price
    @cart.count * BOOK_PRICE
  end

  def discount
    case @cart.count
    when 2
      FIVE_PERCENT_DISC
    when 3
      TEN_PERCENT_DISC
    else
      NO_DISCOUNT
    end
  end

end
