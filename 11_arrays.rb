# Section 11 of the Ruby Basics Exercises page. Arrays

# 1.- New Pet. 

# In the code below, an array containing different types of pets is assigned to pets.
# Select 'fish' from pets, assign the return value to a variable named my_pet, 
# then print the value of my_pet.


# pets = ['cat', 'dog', 'fish', 'lizard']


# my_pet = pets[2]

# puts "I have a pet #{my_pet}!"

# 2.-  Select 'fish' and 'lizard' from pets at the same time, assign the return 
# value to a variable named my_pets, then print the value of my_pets.

# my_pets = [pets[2], pets[3]] My way is OK but there is an easier way:
# my_pets = pets[2,3], to add elements that can be separated in the initial array

# my_pets = pets[2..3]

# puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"


# 3.- Free the lizard. Remove 'lizard' from my_pets then print the value of my_pets.
# Then print again my_pets


# my_pets.pop

# puts "I have a pet #{my_pets[0]}!"




# 4.- Using the code below, select 'dog' from pets, add the return value to 
# my_pets, then print the value of my_pets.

pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop
my_pets.push(pets[1])

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"


# 5.- Use Array#each to iterate over colors and print each element.


colors = ['red', 'yellow', 'purple', 'green']

colors.each {|color| puts "I am the color #{color}!"}

# 6.- Doubled. Use Array#map to iterate over numbers and return a new 
# array with each number doubled. Assign the returned array to a variable 
# named doubled_numbers and print its value using #p.


numbers = [1, 2, 3, 4, 5]

doubled_numbers = numbers.map {|x| x * 2}

p doubled_numbers


# 7.- Use Array#select to iterate over numbers and return a new array that 
# contains only numbers divisible by three. Assign the returned array to a 
# variable named divisible_by_three and print its value using #p.

numbers = [5, 9, 21, 26, 39]

divisible_by_three = numbers.select { |x| x % 3 == 0 }

# Understanding the difference between Array#map and Array#select is crucial
# when learning Ruby. They're very similar so it's easy to get confused. 
# However, the main difference between #map and #select is the way the new 
# element's value is chosen. #map returns a new array with each element 
# transformed based on the block's return value. #select returns a new array 
# containing elements selected only if the block's return value is true.

p divisible_by_three

# 8.- Favorite Number (Part 1 )The following array contains three 
# names and numbers. Group each name with the number following 
# it by placing the pair in their own array. 
# Then create a nested array containing all three groups. What does this look
# like? (You don't need to write any code here. Just alter the value shown
# so it meets the exercise requirements.)

['Dave', 7, 'Miranda', 3, 'Jason', 11]

# my solution: 
[['Dave', 7], ['Miranda', 3], ['Jason', 11]]

# 9.- Favorite Number (Part 2). Use Array#flatten to flatten favorites so 
# that it's no longer a nested array. Then assign the flattened array to 
# a variable named flat_favorites and print its value using #p.

favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]

flat_favorites = favorites.flatten

p flat_favorites                    # ["Dave", 7, "Miranda", 3, "Jason", 11]
p favorites                         # [["Dave", 7], ["Miranda", 3], ["Jason", 11]]

flat_favorites = favorites.flatten!

p flat_favorites                    # ["Dave", 7, "Miranda", 3, "Jason", 11]
p favorites                         # ["Dave", 7, "Miranda", 3, "Jason", 11]


# 10.- In the code below, two arrays containing several numbers are assigned
# to two variables, array1 and array2. Compare array1 and array2 and print 
# true or false based on whether they match.

array1 = [1, 5, 9]
array2 = [1, 9, 5]

puts array1 == array2





