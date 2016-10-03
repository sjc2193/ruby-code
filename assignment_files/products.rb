class Products
  def initialize(name,price,stock)
    @name,@price,@stock=name,price,stock
    @gross=@price*1.2
  end

  def getName
    @name
  end
  def getPrice
    @price
  end
  def getStock
    @stock
  end
  def getGross
    @gross
  end
  def sellStock(num)
    @stock-=num
  end
end