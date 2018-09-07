# Section 12 of the Ruby Basics Exercises page. Hashes

# 1.- Create a hash that contains the following data and assign it to a variable 
# named car.

car = {

  type: 'sedan',
  color: 'blue',
  mileage: 80_000

}

# 2.- add the key :year and the value 2003 to car.

car[:year] = 2003

p car 

# 3.- delete the key :mileage and its associated value from car.

car.delete(:mileage)

p car


# 4.- select the value 'blue' from car and print it with #puts.

puts car[:color]


# 5.- Labeled numbers: Use Hash#each to iterate over numbers and print each 
# element's key/value pair.

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each { |key, value| puts "A #{key} value is: #{value}" }

# 6.- Divided by two. Use Enumerable#map to iterate over numbers and return 
# an array containing each number divided by 2. Assign the returned array 
# to a variable named half_numbers and print its value using #p.

half_numbers = []
numbers.map { |key, value| half_numbers.push(value / 2) }

p half_numbers

# 7.- Use Hash#select to iterate over numbers and return a hash 
# containing only key-value pairs where the value is less than 25.
# Assign the returned hash to a variable named low_numbers and 
# print its value using #p.

low_numbers = {}

low_numbers = numbers.select{ |key, value| value < 25 }

p low_numbers     # {:low=>10}
p numbers         # {:high=>100, :medium=>50, :low=>10}


# 8.- numbers isn't mutated because #select isn't a destructive 
# method. However, there is a destructive version of #select named
# #select!. Modify the code to use #select! instead of #select.


low_numbers = numbers.select!{ |key, value| value < 25 }

p low_numbers     # {:low=>10}
p numbers         # {:low=>10}


# 9.-  Create a nested hash using the following data: 

multiple_cars = {
  car:  { type: 'sedan', color: 'blue', year: '2003' },
  truc: { type: 'pickup', color: 'red', year: '1998' }
}

# 10.- Rewrite car as a nested array containing the same 
# key-value pairs.

car = [[:type, 'sedan'],[:color, 'blue'],[:year, 2003]]



