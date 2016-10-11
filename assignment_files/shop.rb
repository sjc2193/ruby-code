require_relative 'products.rb'

class Shop
  def initialize
    @goods = []
  end

  def add_goods new_item
    @goods.push new_item
  end

  def average
    @goods.inject(0) do |total_gross, items|
      total_gross += items.gross/@goods.count
    end
  end

  def net
    @goods.inject(0) do |total_net, items|
      total_net += items.stock * items.price
    end
  end

  def sort
    @goods.sort! { |a,b| a.name <=> b.name }
  end

  def to_s
    @goods.inject("") do |output_string, items|
      output_string += "#{items.name} #{items.gross.round(2)}" + "\n"
    end
  end

end
