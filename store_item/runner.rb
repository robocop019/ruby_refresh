require './item.rb'
require './food.rb'

item_1 = Food.new(
                  name: 'Red pepper', 
                  color: 'Red', 
                  price: 1,
                  shelf_life: 1
                  )

item_2 = Food.new(
                  name: 'Onion', 
                  color: 'White', 
                  price: 2,
                  shelf_life: 5
                  )

item_3 = Food.new(
                  name: 'Potato Chips', 
                  color: 'Yellow', 
                  price: 5,
                  shelf_life: 36
                  )

item_4 = Item.new(
                  name: 'Scissors', 
                  color: 'Black', 
                  price: 10
                  )
p item_1
p item_2
p item_3
p item_4

puts "#{item_1.name} is the color #{item_1.color} and costs #{item_1.price} dollar(s)."
puts "#{item_2.name} is the color #{item_2.color} and costs #{item_2.price} dollar(s)."
puts "#{item_3.name} is the color #{item_3.color} and costs #{item_3.price} dollar(s)."

item_1.price = 1.5

p item_1