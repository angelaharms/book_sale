require 'array_extend'

class Bookset < Array

  BOOK_PRICE = 8
  DISCOUNT = {
    2 => 0.05,
    3 => 0.10,
    4 => 0.20,
    5 => 0.25
  }

  def bookset_price
    base_price * (1.0 - percentage_discount)
  end

  def base_price
    count * BOOK_PRICE
  end

  def percentage_discount
    DISCOUNT[count] || 0
  end

end
