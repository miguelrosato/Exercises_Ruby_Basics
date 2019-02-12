# Reading Documentation Part 2

# Methods without Arguments

# How would you use String#upcase to create an uppercase version of the string "xyz"?

p "xyz".upcase

# Required Arguments

# Assume you have this Array:

a = %w(a b c d e)

# How would you use Array#insert to insert the numbers 5, 6, and 7 between the elements with values 'c' and 'd'?

p a.insert(3, 5, 6, 7)

# Optional Arguments

# Assume you have the following code:

s = 'abc def ghi,jkl mno pqr,stu vwx yz'
puts s.split.inspect  # ["abc", "def", "ghi,jkl", "mno", "pqr,stu", "vwx", "yz"] split separates by the spaces and creates an array
puts s.split(',').inspect # ["abc def ghi", "jkl mno pqr", "stu vwx yz"] split separates by the commas and creates an array of three string elements
puts s.split(',', 2).inspect # ["abc def ghi", "jkl mno pqr,stu vwx yz"] split separates at the first comma and creates an array of only two string elements (as per the split factor 2) separated by the first comma.
# What will each of the 3 puts statements print?