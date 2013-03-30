class Sale

  BOOK_PRICE = 8
  NO_DISCOUNT = 1
  FIVE_PERCENT_DISC = 0.95
  TEN_PERCENT_DISC = 0.9

  def total(cart)
    cost = cart.count * BOOK_PRICE
    cost *= discount_for(cart)
    cost
  end

  def discount_for(cart)
    case cart.count
    when 2
      FIVE_PERCENT_DISC
    when 3
      TEN_PERCENT_DISC
    else
      NO_DISCOUNT
    end
  end

end
