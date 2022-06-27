require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

@store1 = Store.find_by(id:1)
puts @store1.inspect

@store2 = Store.find_by(id:2)
@store1.name = 'Lego'
@store1.save
puts @store1.inspect

