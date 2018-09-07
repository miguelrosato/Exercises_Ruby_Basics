# This is a resume of the answers for the Ruby Basics exercises Section 1. 
# Reading Documentation.

# 1.- Where can you find the most complete Ruby documentation?

# My prefedrred source is http://ruby-doc.org/core-2.5.1/

# 2.- Locate the description of the while loop in the ruby documentation.

# http://ruby-doc.org/core-2.5.1/doc/syntax/control_expressions_rdoc.html

# 3.- Using Ruby documentation, determine what value a while loop returns.

# A Ruby while loop return nil unless a break code is introduced, in which case
# the last value being evaluated by the loop is returned.
# https://ruby-doc.org/core-2.2.0/doc/syntax/control_expressions_rdoc.html

# 4.- In the previous exercise, you learned that the while loop returns nil
# unless break is used. Locate the documentation for break, and determine
# what value break sets the return value to for the while loop.

# nil if no arguments are passed to break, or the value of the argument if 
# an argument is given.

# 5.- Using the ruby documentation, determine how you can write large numbers 
# in a way that makes them easier to read.

# Ruby large numbers can be written using under scores, to give the equivalent 
# position of commas. like 1000000 can be written 1_000_000.
# https://ruby-doc.org/core-2.2.0/doc/syntax/literals_rdoc.html

# 6.- Using the ruby documentation, determine how you would write a Symbol that 
# represents your name. We aren't looking for a String; we want a Symbol, which 
# is one of ruby's datatypes.

# Symbols are represented as follows: 
# :this_is_a_symbol 
# :name
# :age
# https://ruby-doc.org/core-2.2.0/doc/syntax/literals_rdoc.html

# 7.- Consider the following method and a call to that method:

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# Use the ruby documentation to determine what this code will print.

# by default, Ruby fills the argements without default value from left to right
# first, but respecting the position of the argument we are adding.
# After that, it start filling the values with default values stated.
# my_method(4,5,6) should return:

[4, 5, 3, 6]

# The first argument provided, 4, is applied to a. The last argument provided, 6,
# is applied to d. The remaining arguments are assigned left to right. Since the
# argument 5 was also provided, this will overwrite b = 2. With no arguments left,
# c will default to c = 3.
# http://ruby-doc.org/core-2.5.1/doc/syntax/calling_methods_rdoc.html


# 8.- Find the string class in the documentation page

# http://ruby-doc.org/core-2.5.1/String.html

# 9.- Use the ruby documentation for the String class to determine which method
# can be used to right justify a String object.

#the string method is .rjust

"hello".rjust(4)            #=> "hello"
"hello".rjust(20)           #=> "               hello"
"hello".rjust(20, '1234')   #=> "123412341234123hello"


# 10.- Locate the documentation for methods File::Path and File#Path. How are they different?

# path(path) → string click to toggle source
# Returns the string representation of the path

# File.path("/dev/null")          #=> "/dev/null"
# File.path(Pathname.new("/tmp")) #=> "/tmp"

# path → filename click to toggle source
# to_path → filename
# Returns the pathname used to create file as a string. Does not normalize the name.

# The pathname may not point to the file corresponding to file. For instance, 
# the pathname becomes void when the file has been moved or deleted.

# This method raises IOError for a file created using File::Constants::TMPFILE 
# because they don't have a pathname.

# File.new("testfile").path               #=> "testfile"
# File.new("/tmp/../tmp/xxx", "w").path   #=> "/tmp/../tmp/xxx"

# The File::Path is a class Method, while File#Path is an instance method.

# File::path is a class method, and returns the string representation of the path.

# from: http://ruby-doc.org/core-2.5.1/File.html#method-c-path

# File#path is an instance method, and returns the (not normalized) pathname used to create the file, which may be inaccurate if the file has been moved or deleted.

# from: http://ruby-doc.org/core-2.5.1/File.html#method-i-path





