require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

surrey = Store.create(name: 'Surrey', annual_revenue: 224_000, mens_apparel: false, womens_apparel: true)
whistler = Store.create(name: 'Whistler', annual_revenue: 1_900_000, mens_apparel: true, womens_apparel: false)
yaletown = Store.create(name: 'Yaletown', annual_revenue: 430_000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each do |s|
  puts "#{s.name} has a annual revenue of #{s.annual_revenue}"
end


@womens_stores = Store.where("annual_revenue > '1000000'", womens_apparel: true)
@womens_stores.each do |s|
  puts "#{s.name} has a annual revenue of #{s.annual_revenue}"
end
# @womens_stores = Store.where(womens_apparel: true)
# ///////////////////////////////////////////////