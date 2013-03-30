require 'array_extend'

class Bookset < Array

  BOOK_PRICE = 8
  NO_DISCOUNT = 1
  FIVE_PERCENT_DISC = 0.95
  TEN_PERCENT_DISC = 0.9

  def bookset_price
    base_price * discount
  end

  def base_price
    count * BOOK_PRICE
  end

  def discount
    case uniq.count
    when 2
      FIVE_PERCENT_DISC
    when 3
      TEN_PERCENT_DISC
    else
      NO_DISCOUNT
    end
  end

end
