require 'array_extend'

class Bookset < Array

  BOOK_PRICE = 8
  DISCOUNT = {
    2 => 0.95,
    3 => 0.9,
    4 => 0.8,
    5 => 0.75
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
