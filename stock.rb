# @note +Stock+ class that represents
# the assumption of the statement
class Stock
  def initialize(name)
    @name = name
  end

  # @param _date [Date]
  # @return The price of the stock in the given date
  def price(_date)
    rand(100..500)
  end
end