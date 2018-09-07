# Section 9 of the Ruby Basics Exercises page. Conditionals

# 1.- In the code below, sun is randomly assigned as 'visible' or 'hidden'.
# Write an if statement that prints "The sun is so bright!" if sun equals 'visible'.

# sun = ['visible', 'hidden'].sample

# if sun == 'visible'
#   puts "The sun is so bright!!!"
# end


# 2.- In the code below, sun is randomly assigned as 'visible' or 'hidden'.
# Write an unless statement that prints "The clouds are blocking the sun!" 
# unless sun equals 'visible'.

# sun = ['visible', 'hidden'].sample

# nless sun == 'visible'
#   puts 'The Clouds are blocking the sun'
# end

# 3.- Write an if statement that prints "The sun is so bright!" if sun equals 
# visible. Also, write an unless statement that prints "The clouds are blocking 
# the sun!" unless sun equals visible.

# sun = ['visible', 'hidden'].sample

#if sun == 'visible'
#  puts "The sun is so bright!!!"
#else
# puts 'The Clouds are blocking the sun'
# end

# single line solution: 

# puts 'The sun is so bright!' if sun == 'visible'
# puts 'The clouds are blocking the sun!' unless sun == 'visible'

# 4.- Write a ternary operator that prints "I'm true!" if boolean equals true 
# and prints "I'm false!" if boolean equals false.

# boolean = [true, false].sample

# boolean ? puts("I'm true") : puts("I'm false")

# 5.- What will the following code print? Why?

#number = 7

#if number
#  puts "My favorite number is #{number}."
#else
#  puts "I don't have a favorite number."
#end

# it will always print "My favorite number is 7." All numbers are truthy unless 
# false or nil. 

# 6.- Write a case statement that prints "Go!" if stoplight equals 'green', 
# "Slow down!" if stoplight equals 'yellow', and "Stop!" if stoplight equals 'red'.

# stoplight = ['green', 'yellow', 'red'].sample


#case stoplight
#when 'green'
#  puts "go"
#when 'yellow'
#  puts 'Slow down!'
#else
#  puts 'Stop!'
#end 

# 7.- Convert the previous case statement to an if statement.

# stoplight = ['green', 'yellow', 'red'].sample

# if stoplight == 'green'
#   puts "go"
# elsif stoplight == 'yellow'
#   puts "Slow down!"
# else
#   puts "Stop!"
# end


# 8.- Write an if statement that returns "Be productive!" if status equals 
# 'awake' and returns "Go to sleep!" otherwise. Then, assign the return value 
# of the if statement to a variable and print that variable.

# status = ['awake', 'tired'].sample

# alert = if status == 'awake'
#           "Be Productive!!!"
#         else 
#           "Go to sleep!"
#         end

# puts alert 


# 9.- Currently, "5 is a cool number!" is being printed every time the program 
# is run. Fix the code so that "Other numbers are cool too!" gets a chance to 
# be executed.

# number = rand(10)

# if number == 5
#   puts '5 is a cool number!'
# else
#   puts 'Other numbers are cool too!'
# end

# 10.- Reformat the following case statement so that it only takes up 5 lines.

#case stoplight
#when 'green'
#  puts 'Go!'
#when 'yellow'
#  puts 'Slow down!'
#else
#  puts 'Stop!'
#end


stoplight = ['green', 'yellow', 'red'].sample

case stoplight 
when 'green' then puts 'Go!'
when 'yellow'then puts 'Slow down!'
else puts 'Stop!'
end


