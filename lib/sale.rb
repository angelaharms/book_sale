class Sale

  BOOK_PRICE = 8
  NO_DISCOUNT = 1
  FIVE_PERCENT_DISC = 0.95
  TEN_PERCENT_DISC = 0.9

  def total(cart)
    cost = cart.count * BOOK_PRICE
    discount = case cart.count
               when 2
                 FIVE_PERCENT_DISC
               when 3
                 TEN_PERCENT_DISC
               else
                 NO_DISCOUNT
               end
    cost *= discount
    cost
  end

end
