# Problem 1
#
# Write three functions that compute the sum of the numbers in a given list
# using a for-loop, a while-loop, and recursion.

puts "for-loop:"

def for_add(a)
  sum = 0
  a.each { |x| sum += x }
  return sum
end

a = [1,2,3,4]
puts "The total of #{a} is #{for_add(a)}."

puts "-" * 10
puts "while-loop:"

def while_add(a)
  sum = 0
  i = 0
  while i < a.length
    sum += a[i]
    i += 1
  end
  return sum
end

a = [1,2,3,4]
puts "The total is #{a} is #{while_add(a)}."

puts "-" * 10
puts "recursion:"

def recursive_add(a)
 if a.length > 0
  return a.shift + recursive_add(a)
 else
  return 0
 end
end

# Pretend that the problem is already solved. (All recursion depends on
# pretending this.) Then sum([1, 2, 3, 4]) is 1 + sum([2, 3, 4]), and in
# general sum for any array is the first element plus sum for the remainder
# of the array. In ruby, the method that splits an array into its first and
# its remainder is shift; calling shift returns the first element of the array
# and removes it from the array.

a = [1,2,3,4]
puts "The total of #{a} is #{recursive_add(a)}."
