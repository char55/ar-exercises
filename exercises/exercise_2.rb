require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

class Store < ActiveRecord::Base
end

@store1 = Store.find_by(id: 1)
@store2 = Store.find_by(id: 2)

@store1.update(name: 'Lasalle')
