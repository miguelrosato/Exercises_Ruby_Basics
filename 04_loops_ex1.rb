# Section 4 of the Ruby Basics Exercises page. Loops Exercices 1

# 1.- Modify the following loop so it stop being infinite:

loop do
  puts 'Just keep printing...'
  break                         # I added this piece of code
end

# 2.- Modify the following nested loop so it stop iterating indefinitely 

loop do
  puts 'This is the outer loop.'
  loop do
    puts 'This is the inner loop.'
    break                       # I added this piece of code
  end
  break                         # I added this piece of code
end

puts 'This is outside all loops.'


# 3.- Modify the following loop so it iterates 5 times instead of just once.

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations +=1                              # I added this code
  break if iterations > 5                     # I added this code
end

# 4.- Loop on Command. Modify the code below so the loop stops iterating when the user inputs 'yes'.

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'                  # I added this code 
  puts "please try again, until answer is 'yes'"
end

# 5.- Modify the code below so "Hello!" is printed 5 times.

say_hello = true
i = 0               #I added this code
while say_hello
  puts 'Hello!'
  i += 1                # I added this code
  if i == 5             # I added this code
    say_hello = false
  end                   # I added this code
end

# 6.- Print while. Using a while loop, print 5 random numbers between 0 and 99. The code below shows an example of how to begin solving this exercise.


numbers = []

while numbers.size < 5
  numbers << rand(100)
end

puts numbers

# 7.- Count. The following code outputs a countdown from 10 to 1. Modify the code so that it counts from 1 to 10 instead.

# Initial code 
# count = 10

# until count == 0
#   puts count
#   count -= 1
# end

# my code modified 

count = 1

until count > 10
  puts count
  count += 1
end


# 8.- Print Until. Given the array of several numbers below, use an until loop to print each number.

numbers = [7, 9, 13, 25, 18]

count = 0

until count == numbers.size
  puts numbers[count]
  count += 1
end

# 9.- Odd number. The code below shows an example of a for loop. Modify the code so that it only outputs i if i is an odd number.


for i in 1..100
  if i % 2 != 0
    puts i
  end
end


# We can also use the following code:

# for i in 1..100
#    puts i if i.odd?
# end

# 10.- Your friends just showed up! Given the following array of names, use a for loop to greet each friend individually.

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for friend in friends do
  puts "Good Morning #{friend}!!!"
end


