require_relative 'shop.rb'

class Product
  attr_reader :name
  attr_reader :stock
  attr_reader :gross
  attr_reader :price

  def initialize(name,price,stock)
    @name=name
    @price=price
    @stock=stock
    @gross=@price*1.2
  end


  def printer()
    "#{name} - #{stock} - #{price}"
  end
end