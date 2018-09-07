# Section 7 of the Ruby Basics Exercises page. Methods

# 1.- Print Me (Part 1). Write a method named print_me that prints "I'm 
# printing within the method!" when invoked.

def print_me
  puts "I'm printing within the method!!!"
end

print_me #Even if it puts the text, the method return nil. 

# 2.- Print Me (Part 2). Write a method named print_me that returns 
# "I'm printing the return value!" when using the following code.

def print_me_2
  "I'm printing the return value!!!"
end

puts print_me_2


# 3.- Write two methods, one that returns the string "Hello" and one that 
# returns the string "World". Then print both strings using #puts, 
# combining them into one sentence.

def hello 
  "Hello"
end

def world 
  "World!!!"
end

puts hello + " " + world 
puts "#{hello} #{world}"      # This is another notation equally valid

# 4.- Write a method named greet that invokes the following methods: hello and world
# When greet is invoked with #puts, it should output the following:
# Hello World!!!


def greet
  hello + " " + world
end 

puts greet 


# 5.- Using the following code, write a method called car that takes 
# two arguments and prints a string containing the values of both arguments.

def car(maker, model)
  puts maker + " " + model
end

car('Toyota', 'Corolla')


# 6.- Day or Night?

daylight = [true, false].sample

def time_of_day(daytime)  
  if daytime
    puts "It's daytime!!!"
  else
    puts "It's nighttime!!!"
  end
end

time_of_day(daylight)

# 7.- Naming Animals. Fix the following code so that the names are printed as expected.

def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}."

# 8.- Name Not Found. Write a method that accepts one argument, but doesn't 
# require it. The parameter should default to the string "Bob" if no argument 
# is given. The method's return value should be the value of the argument.

def assign_name(name='Bob')
  name 
end

puts assign_name == 'Bob'
puts assign_name("Kevin") == 'Kevin'

# 9.- Multiply the Sum. Write the following methods so that each output is true.

def add(num1, num2)
  num1 + num2
end

def multiply(num1, num2)
 num1 * num2
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36

# 10.- Random Sentence. 

def name(names)
  names.sample
end

def activity(activities)
  activities.sample
end

def sentence(names, activities)
  names + " " + "went" + " " + activities + " " +"today!!!"
end

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

puts sentence(name(names), activity(activities))