# item_1 = {name: 'red pepper', color: 'red', price: 1}
# item_2 = {:name => 'onion', :color => 'white', :price => 2}
# item_3 = {name: 'chips', color: 'yellow', price: 5}

# # p item_1
# # p item_2
# # p item_3

# puts "Item 1 is a #{item_1[:name]} and is #{item_1[:color]} with a price of #{item_1[:price]} dollar(s)."

class Item
  attr_reader :name, :color, :price
  attr_writer :price

  def initialize(name, color, price)
    @name = name
    @color = color
    @price = price
  end

end

item_1 = Item.new('Red pepper', 'Red', 1)
item_2 = Item.new('Onion', 'White', 2)
item_3 = Item.new('Potato Chips', 'Yellow', 5)

p item_1
# p item_2
# p item_3

puts "#{item_1.name} is the color #{item_1.color} and costs #{item_1.price} dollar(s)."
puts "#{item_2.name} is the color #{item_2.color} and costs #{item_2.price} dollar(s)."
puts "#{item_3.name} is the color #{item_3.color} and costs #{item_3.price} dollar(s)."

item_1.price = 1.5

p item_1