# Section 6 of the Ruby Basics Exercises page. User input 

# 1.- Write a program that asks the user to type something in, after which your
# program should simply display what was entered.

puts "I will repeat whatever you enter next: "
variable = gets
puts variable


# 2.- Write a program that asks the user for their age in years, and then 
# converts that age to months.

puts "Please introduce your age in years: "

age_years = gets.chomp.to_i
age_months = age_years * 12 

puts "your age is approximately #{age_months} months!!!"

# 3.- Write a program that asks the user whether they want the program to print
# "something", then print it if the user enters y. Otherwise, print nothing.

puts "Do you want me to print something (please enter y)? "
answer = gets.chomp

puts "something" if answer == 'y'

# 4.- Print Something (Part 2)

# loop do
#  puts "Do you want me to print something? (y/n)"
#  ans = gets.chomp.downcase
#  if ans == 'y'
#    puts "I'm printing this line for you!!!"
#    break
#  elsif ans == 'n'
#    puts "I'm out of here"
#    break
#  else
#    puts "Invalid answer. Please use (y/n)"
#  end
# end

# This is a better example of the code:

choice = nil
loop do
  puts '>> Do you want me to print something? (y/n)'
  choice = gets.chomp.downcase
  break if %w(y n).include?(choice)
  puts '>> Invalid input! Please enter y or n'
end
puts 'something' if choice == 'y'

# 5.- Launch School Printer (Part 1)

# Write a program that prints 'Launch School is the best!' repeatedly until a 
# certain number of lines have been printed. The program should obtain the 
# number of lines from the user, and should insist that at least 3 lines are 
# printed.

# loop do
#   puts "Please enter the number of times you want our phrase repeated? "
#   number_times = gets.chomp.to_i

#   if number_times <= 3
#     puts "Less than three times is not enough"
#   else
#     number_times.times { puts "Launch School is the best!!!" }
#     break
#   end
# end

# Some better code

number_of_lines = nil
loop do
  puts '>> How many output lines do you want? Enter a number >= 3:'
  number_of_lines = gets.to_i
  break if number_of_lines >= 3
  puts ">> That's not enough lines."
end

while number_of_lines > 0
  puts 'Launch School is the best!'
  number_of_lines -= 1
end


# 6.- Passwords

# Write a program that displays a welcome message, but only after the user 
# enters the correct password, where the password is a string that is defined 
# as a constant in your program. Keep asking for the password until the user 
# enters the correct password.

password = 'EntereD'              # This is a constant. I Used bad code. 

loop do 
  puts "Hello, welcome back. Please enter your password: "
  pass_input = gets.chomp

  if pass_input == password
    puts "Your Password is correct!!!"
    break
  else
    puts "Your Password is incorrect. Please try again!!!"
  end
end


# 7.- User Name and Password

user_name = 'MiguelRosato'        # These is a constant. I used the wrong notation
password_2 = 'DesigN'             # Constant again. Caps next time. 

# loop do

#   puts "Hello, Welcome back. Please enter your user name:"
#   user_input = gets.chomp

#   puts "Now, please enter your password: "
#   pass_input_2 = gets.chomp

#   if (user_input == user_name) && (pass_input_2 == password_2) 
#     puts "Your user name and Password are correct. Welcome into the system!!!"
#     break
#   else
#     puts "Your user name or Password are incorrect. Please try again!!!"
#   end
# end

# This is a sample of better code:

USERNAME = 'admin'
PASSWORD = 'SecreT'

loop do
  puts '>> Please enter your user name:'
  user_name = gets.chomp

  puts '>> Please enter your password:'
  password_try = gets.chomp

  break if user_name == USERNAME && password_try == PASSWORD
  puts '>> Authorization failed!'
end

puts 'Welcome!'


# 8.- Dividing Numbers. 

# Write a program that obtains two Integers from the user, then prints the 
# results of dividing the first by the second. The second number must not 
# be 0, and both numbers should be validated using this method:

number_a = nil
number_b = nil

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

loop do
  puts "Please enter the first number (the numerator): "
  number_a = gets.chomp
  break if valid_number?(number_a)
  puts "Your inpuit is not a valid number. Please try again"
end

loop do
  puts "Please enter the second number (The divisor): "
  number_b = gets.chomp
  if number_b == '0'
    puts "Divisions by 0 are not possible, please introduce an integer"
  else
    break if valid_number?(number_b)
    puts "Your input is not a valid number. Please try again "
  end
end

number_c = number_a.to_i / number_b.to_i

puts "The number #{number_a} divided by #{number_b} is #{number_c}"



# 9.- Launch School Printer (Part 2). Modify the printer program 
# to keep asking for a number until the user decides to quit. 

loop do
  input_string = nil
  number_of_lines = nil

  loop do
    puts '>> How many output lines do you want? ' \
         'Enter a number >= 3 (Q to Quit):'

    input_string = gets.chomp.downcase
    break if input_string == 'q'

    number_of_lines = input_string.to_i
    break if number_of_lines >= 3

    puts ">> That's not enough lines."
  end

  break if input_string == 'q'

  while number_of_lines > 0
    puts 'Launch School is the best!'
    number_of_lines -= 1
  end
end

# 10.- Write a program that requests two integers from the user, 
# adds them together, and then displays the result.

def valid_number_2?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

my_number_1 = nil
my_number_2 = nil

loop do

  puts "please enter the first positive or negative integer: "
  my_number_1 = gets.chomp
  break if valid_number_2?(my_number_1)
  puts "Please enter a valid positive or negative integer"

end

loop do

  puts "please enter the second positive or negative integer: "
  my_number_2 = gets.chomp
  break if valid_number_2?(my_number_1)
  puts "Please enter a valid positive or negative integer"
  
end

my_number_1 = my_number_1.to_i
my_number_2 = my_number_2.to_i
my_number_3 = my_number_1 + my_number_2

puts "The sum of #{my_number_1} and #{my_number_2} is equal to #{my_number_3} "

# I repeated myself with this code and didn't verify one negative and one positive. 
# correct answer:

def valid_number_3?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do
    puts '>> Please enter a positive or negative integer:'
    number = gets.chomp
    return number.to_i if valid_number_3?(number)
    puts '>> Invalid input. Only non-zero integers are allowed.'
  end
end

first_number = nil
second_number = nil

loop do
  first_number = read_number
  second_number = read_number
  break if first_number * second_number < 0
  puts '>> Sorry. One integer must be positive, one must be negative.'
  puts '>> Please start over.'
end

sum = first_number + second_number
puts "#{first_number} + #{second_number} = #{sum}"







