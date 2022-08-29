require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

puts sum = "Annual Revenues: #{Store.sum(:annual_revenue)}"
puts average = "Average Revenue: #{Store.average(:annual_revenue)}"
puts highest_grossing_store = "Highest Grosssing Stores #{Store.where("annual_revenue > '1000000'").count}"

