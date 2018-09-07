# Section 5 of the Ruby Basics Exercises page. Loops Exercices 2

# 1.- Write a loop that prints numbers 1-5 and whether the number is even or odd.

count = 1

loop do
  if count % 2 != 0 
    puts "Number #{count} is odd!"
  else
    puts "Number #{count} is even!"
  end
  count += 1
  break if count > 5
end

# Other Way to write this code: 

count = 1

loop do
  if count.odd?                       # We can use the mthod .odd? or .even? to a variable to test if it's odd or even directly. 
    puts "Number #{count} is odd!"
  else
    puts "Number #{count} is even!"
  end
  break if count == 5
  count += 1
end

# 2.- Modify the following code so that the loop stops if number is between 0 and 10.


loop do
  number = rand(100)
  puts number
  break if (number >= 0) && (number <= 10)
end


# 3.- Using an if/else statement, run a loop that prints "The loop was processed!" one time if process_the_loop equals true. Print "The loop wasn't processed!" if process_the_loop equals false.


process_the_loop = [true, false].sample

if process_the_loop
  loop do 
  puts "The Loop was processed!"
  break
  end
else
  puts "The Loop wasn't processed"
end

# 4.- Get the sum. correct answer or keep the loop running

loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i

  if answer == 4
    puts "That's the correct answer!!!"
    break
  else
    puts "Your answer is wrong. Please try again: "
  end
end

# 5.- Modify the code below so that the user's input gets added to the numbers 
# array. Stop the loop when the array contains 5 numbers.

numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers.push(input)
  break if numbers.length == 5
end
p numbers

# 6.- Given the array below, use loop to remove and print each name. Stop the 
# loop once names doesn't contain any more elements.

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do 
  names.pop 
  break if names[0].nil?
end

p names 

# 7.- The method below counts from 0 to 4. Modify the block so that it prints 
# the current number and stops iterating when the current number equals 2.

5.times do |index|
  puts index
  break if index == 2 
end

# 8.- Using next, modify the code below so that it only prints even numbers.

number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end

# 9.- First to Five. 

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next unless (number_a == 5) || (number_b == 5)
  break
end

puts "5 was reached!!!"
puts number_a
puts number_b


# 10.- Given the code below, use a while loop to print "Hello!" twice.

def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings > 0
  greeting
  number_of_greetings -= 1
end






