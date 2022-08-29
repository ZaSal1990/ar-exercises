require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: 0, womens_apparel: 1)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: 1, womens_apparel: 0)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: 1, womens_apparel: 1)

puts Store.count

@mens_store = Store.where("mens_apparel = '1' and womens_apparel = '0'")

@mens_store.each do |store_name|
  puts "#{store_name.name}: #{store_name.annual_revenue}"
end

@womens_store = Store.where("mens_apparel = '0' and womens_apparel = '1' and annual_revenue < '1000000'")
@womens_store.each do |store_name|
  puts "#{store_name.name}: #{store_name.annual_revenue}"
end