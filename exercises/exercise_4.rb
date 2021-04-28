require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(name: "Burnaby", annual_revenue: 224000, mens_apparel: false, womens_apparel: true).save
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false).save
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true).save
Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false).save


@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |store|
  puts "Name: #{store.name}  Annual Revenue: #{store.annual_revenue}"
end

@womens_and_million_stores = Store.where("mens_apparel = ? AND annual_revenue > ?", true, 1000000)

puts "-----------------"
@womens_and_million_stores.each do |store|
  puts "Name: #{store.name}  Annual Revenue: #{store.annual_revenue}"
end