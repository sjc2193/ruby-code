require_relative 'shop.rb'
require_relative 'products.rb'

class Main

  shop = Shop.new

  IO.foreach('shop.txt') do |line|
    #if(line == /^([0-9a-z\-_\.]+)\s([0-9]{2})\.([0-9])\s(\d)+$/)
      data = line.split
      name = data[0]
      net_price = data[1].to_f
      stock = data[2].to_i
      product= Product.new name, net_price, stock

      shop.add_goods product
    end
  #end

  shop.sort
  puts shop.to_s
  puts "Value in shop: €#{shop.net.round(2)}"
  puts "Average price of Goods: €#{shop.average.round(2)}"

end