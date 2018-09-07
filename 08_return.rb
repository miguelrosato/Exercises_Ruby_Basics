# Section 8 of the Ruby Basics Exercises page. Return

# 1.- Breakfast, Lunch, or Dinner? (Part 1). What will the following code print? 
# Why? Don't run it until you've attempted to answer.

def meal
  return 'Breakfast'
end

puts meal

# The method will return 'Breakfast' 

# 2.- What will the following code print? Why? 

def meal
  'Evening'
end

puts meal


# The method will print 'Evening'. the Return happens regardless of being 
# evident or not.

# 3.- What will the following code print? Why?

def meal
  return 'Breakfast'
  'Dinner'
end

puts meal

# it will return 'Breakfast'. the return makes the code of the method to end in that line. 

# 4.- What will the following code print? Why?

def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal

# it will puts 'dinner' and 'breakfast' in different lines. 'dinner' from puts return nil, but 
# the method return 'Breakfast'

# 5.- What will the following code print? Why?

def meal
  'Dinner'
  puts 'Dinner'
end

p meal

# it will prinyt 'dinner' and nil in different lines, since the return is implicit. 

# 6.- What will the following code print? Why? 

def meal
  return 'Breakfast'
  'Dir'
  puts 'Dinner'
end

puts meal


# it will return 'Breakfast and stop there'

# 7.- What will the following code print? Why?

def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep

# numbers from 0 to 5 on separate lines. times returns numbers froim 0 to 4,
# but the method adds the integer 5. 

# 8.- What will the following code print? Why?

def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep

# numbers from 0 to 5 on separate lines. times returns numbers froim 0 to 4,
# but the method adds the integer 10.

# 9.- What will the following code print? Why?

def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep

# it will return 0, 1, 2 and nil. 

# 10.- What will the following code print? Why?

def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number

# it will return 1 




