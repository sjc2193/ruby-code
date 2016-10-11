require_relative 'shop.rb'
require_relative 'products.rb'

class Test
  shop_test=Shop.new

  product= Product.new "cat", "10.00", "20"
  shop_test.add_goods product
  product= Product.new "dog", "15.00", "15"
end