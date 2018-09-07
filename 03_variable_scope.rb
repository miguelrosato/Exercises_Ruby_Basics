# Section 3 of the Ruby Basics Exercises page. 

# 1. What's my value and why? 

a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a

# It will print 7, since the variable a does not get affected by the method. 

# 2.- What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a


# It will return 7 again, since the a inside the method get another memory allocation than the a initially declared. There are two differentg values of a, of which one lives only inside the method. 


# 3.- What will the following code print, and why?

a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a

# It will return 7 again, since all the values of a declared inside the methods will be separate from the outside variable a. 

# 4.- What will the following code print, and why? 

a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a

# it wll print "Xy-zy". strings, differently than numbers, can be mutated by the method, and String#[]= is a mutating method. 


# 5.- What will the following code print, and why?

a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a

# it will put "Xyzzy" since there is no mutating method applied, and the value of a is not affected

# 6.- What will the following code print, and why?

# a = 7

# def my_value(b)
#  b = a + a
# end

# my_value(a)
# puts a

# it will print throw an error. `my_value': undefined local variable or method `a' for main:Object (NameError)
# Even though a is defined before my_value is defined, it is not visible inside 
# my_value. Method definitions are self contained with respect to local 
# variables. Local variables initialized inside the method definition are 
# not visible outside the method definition, and local variables initialized 
# outside the method definition are not visible inside the method definition.


# 7.- What will the following code print, and why?

a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# it will puts 3, which is the last value assigned by the iterator through the array

# 8.- What will the following code print, and why?

# array = [1, 2, 3]

# array.each do |element|
 #  a_1 = element
# end

# puts a_1

# It will print an error. The variable a needs to be declared outside the scope of the method.
# undefined local variable or method `a_1' for main:Object (NameError)

# 9.- What will the following code print and why?

a_2 = 7
array = [1, 2, 3]

array.each do |a_2|
  a_2 += 1
end

puts a_2


# it will puts 7 due to shadowing. it will consider the variable a_2 inside the block as separate. 

# 10.- What will the following code print and why:

a_3 = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a_3 += b
  end
end

my_value(array)
puts a_3

# it will throw an error. undefined method `+' for nil:NilClass (NoMethodError).
# The a_3 value inside the method, is not visible outside the scope of the method, hence, it's like it has never been declared in the method. 

