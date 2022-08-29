require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Zahra", last_name: "Salman", hourly_rate: 60)
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 40)
@store1.employees.create(first_name: "Salman", last_name: "Akhtar", hourly_rate: 60)
@store2.employees.create(first_name: "Denille", last_name: "Gracia", hourly_rate: 40)
@store2.employees.create(first_name: "John", last_name: "Hopkins", hourly_rate: 50)
@store2.employees.create(first_name: "Sonam", last_name: "Kapoor", hourly_rate: 50)


puts @store1.employees.count
puts @store2.employees.count