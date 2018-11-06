require_relative '../setup'

puts "Exercise 1"
puts "----------"

class Stores < ActiveRecord::Base
end

burnaby = Stores.create(name: 'Burnaby', annual_revenue: 300_000, mens_apparel: true, womens_apparel: true)
richmond = Stores.create(name: 'Richmond', annual_revenue: 1_260_000, mens_apparel: false, womens_apparel: true)
gastown = Stores.create(name: 'Gastown', annual_revenue: 190_000, mens_apparel: true, womens_apparel: false)

puts "Number of stores in database: #{Stores.count}"