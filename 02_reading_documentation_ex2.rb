# 1.- How would you use String#upcase to create an uppercase version of the string "xyz"?

p "xyz".upcase
puts "Welcome to #{'xyz'.upcase} Corporation!"
z = "xyz".upcase + "zyx".downcase
puts z

# 2.- Assume you have this Array:

a = %w(a b c d e)

# How would you use Array#insert to insert the numbers 5, 6, and 7 between the 
# elements with values 'c' and 'd'?

a.insert(3, 5, 6, 7)

p a

# The first number (3) defines the index wher the numberfs are inserted. 
# Then it insert all the numbers in that index

# 3.- Assume that you have the following code:
# What will each of the 3 puts statements print?

s = 'abc def ghi,jkl mno pqr,stu vwx yz'
puts s.split.inspect                    # ["abc", "def", "ghi,jkl", "mno", "pqr,stu", "vwx", "yz"]
# it divides the string into new strins separated by the previous blank spaces
puts s.split(',').inspect               # ["abc def ghi", "jkl mno pqr", "stu vwx yz"]
# it divides the string intro new strings divided by the previous commas. The commas are not part of the new strings
puts s.split(',', 2).inspect            # ["abc def ghi", "jkl mno pqr,stu vwx yz"]
# With the addition of 2 to the arguments, #split will cut off splitting once 
# the array reaches 2 values.
# As a result the string isn't split at the second comma.


# 4.- Assume you have the following code. What will each of the 4 puts statements print?:


require 'date'

puts Date.new                     # will put -4712-01-01
puts Date.new(2016)               # will put 2016-01-01
puts Date.new(2016, 5)            # will put 2016-05-01
puts Date.new(2016, 5, 13)        # will put 2016-05-13


# 5.- The Array#bsearch method is used to search ordered Arrays more quickly than 
# find and #select can. Assume you have the following code. How would you search 
# this Array to find the first element whose value exceeds 8?:


a = [1, 4, 8, 11, 15, 19]

b = a.bsearch { |x| x > 8 } # Bsearch will find the first value that's greater than 8 in the array and will return that value. 

puts b


# 6.- What do each of these puts statements output?


a = %w(a b c d e)
# puts a.fetch(7)                         # Index Error. index 7 outside of array bounds: -5...5 (IndexError)
puts a.fetch(7, 'beats me')             # 'beats me'
puts a.fetch(7) { |index| index**2 }    # 49


# 7.- What this code will print?

5.step(to: 10, by: 3) { |value| puts value }    # Will puts 5 and then 8. It's making increases of 3, starting by 5 and ending in 10. 

# 8.- Use irb to run the following code:

s = 'abc'
puts s.public_methods(false).inspect
puts " "


# 9.- Use irb to run the following code:
a = [5, 9, 3, 11]
puts a.min

# Find the documentation for the #min method and change the above code to print the two smallest values in the Array.

puts a.min(2)

# 10.- Find the load file menu in YAML (psych)





