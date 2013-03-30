require 'array_extend'

class Bookset < Array

  BOOK_PRICE = 8
  NO_DISCOUNT = 1
  FIVE_PERCENT_DISC = 0.95
  TEN_PERCENT_DISC = 0.9

  DISCOUNT = {
    2 => 0.95,
    3 => 0.9,
    4 => 0.8
  }

  def bookset_price
    base_price * discount
  end

  def base_price
    count * BOOK_PRICE
  end

  def discount
    DISCOUNT[count] || 1
  end

end
