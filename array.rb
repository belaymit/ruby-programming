my_array = [1, 2, 3, 'four', true]
# In this example, my_array is an array with five elements,
# including an integer, a string, and a boolean.

my_array[0]
# we can modify elements of an array by assigning a new value to their index
my_array[3] = 'FOUR'
# puts my_array # outputs [1, 2, 3, "FOUR", true]

# my_array = Array.new
my_array = Array.new(10)
puts my_array

# puts flag.size  # This returns 10
# puts flag.length # This also returns 10
my_array = Array.new(3, 'repeated') # returns ['repeated', 'repeated', 'repeated']
puts my_array
my_array = Array.new(10) { |el| p el * 2 } # multiply each array element by 2
p my_array
# start from zero and run all the way to 9
# output:  [0, 2, 4, 6, 8, 10, 12, 14, 16, 18]

my_array = Array.new(5) { |e| p e**2 } # square each array element
# start form zero and run all the way to 4
puts my_array
# output: [0, 1, 4, 9, 16]
my_array = Array.[](1, 2, 3, 4, 5) # my_array = Array(1..5)
puts my_array
my_array = Array[1, 2, 3, 4, 5]
puts my_array
# The Kernel module available in core Ruby has an Array method,
# which only accepts a single argument. Here, the method takes a
#  range as an argument to create an array of digits −

digits = Array(0..9)
puts digits
puts digits.at(4)

my_array.push('value') # add value to my_array
my_array.pop # remove the top element

array_one = ['String', 5, 4.5, true]
puts array_one
array_two = [3, 2]
puts(array_one + array_two)

# More examples

# my_array = Array.new(3) { Hash.new } # [{}, {}, {}]
# puts my_array

my_array = Array.new(3) { Array.new(3) } # [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
puts my_array

# my_array = Array({ :a => 'value of a', :b => 'value of b' })
# puts my_array

arr = [1, 2, 3, 4, 5, 6]
arr[2] # => 3
arr[100] # => nil
arr[-3] # => 4
arr[2, 3] # => [3, 4, 5]
arr[1..4] # => [2, 3, 4, 5]
arr[1..-3] # => [2, 3, 4]

arr = %w[a b c d e f]
# arr.fetch(100) #=> IndexError: index 100 outside of array bounds: -6...6
arr.fetch(100, 'oops') #=> "oops"

arr.first # => 1
arr.last # => 6

# To return the first n elements of an array, we can use take

arr.take(3) # => [1, 2, 3]
arr.drop(3) # => [4, 5, 6]

programming = ['Python', 'JavaScript', 'Ruby', 'C++', 'SQL']
programming.count # => returns 5
programming.length # => return 5

programming.include?('C') # => false
programming.empty? # => false

# Items can be added to the end of array by using either push or <<

arr = [1, 2, 3, 4]
arr.push(5) # => [1, 2, 3, 4, 5]
arr << 6 # => [1, 2, 3, 4, 5, 6]

# unshift will add item at the beginning of an array
arr.unshift(0) # => [0, 1, 2, 3, 4, 5, 6]

arr.insert(3, 9) # => [0, 1, 2, 9, 4, 5, 6, 7]
arr.insert(3, 'String', 2, 4.3, true) # => [0, 1, 2, 'String', 2, 4.3, true, 9, 4, 5, 6]

new_arr = [1, 2, 3, 4, 5]
new_arr.pop # => [1, 2, 3, 4]
# puts(new_arr)
new_arr.shift # => [2, 3, 4]

fine_arr = ['code', 2, 'Python', nil, 3.4, true, nil]
puts fine_arr
fine_arr.compact # => ['code', 2, 'Python', 3.4, true]
puts fine_arr
puts fine_arr # => ['code', 2, 'Python', nil, 3.4, true, nil]
fine_arr.compact! # => ['code', 2, 'Python', 3.4, true]
puts fine_arr # => ['code', 2, 'Python', 3.4, true]

arr = [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556]
puts arr
arr.uniq #=> [2, 5, 6, 556, 8, 9, 0, 123]
puts arr
arr = [1, 2, 3, 4, 5]
puts arr
# arr.each { |a| p a -= 10, ' ' }

words = %w[first second third fourth]
str = ''
words.reverse_each { |w| p str += "#{w} " }
# p str => "fourth third, second, first, "

new_arr = [1, 2, 3, 4, 5]
puts new_arr
new_arr.map { |el| p el * 2 } # => [2, 4, 6, 8, 10]
puts new_arr # => [1, 2, 3, 4, 5]


new_arr.map! { |e| e**2 } # => [1, 4, 9, 16, 25]
p new_arr # => [1, 4, 9, 16, 25]

new_arr = [1, 2, 3, 4, 5, 6]
new_arr.select { |a| a > 3 } # => 4, 5, 6
new_arr.reject { |a| a > 3 } # => 1, 2, 3
new_arr.drop_while { |a| a > 4 } # => 5, 6

puts new_arr

arr = [1, 2, 3, 4, 5, 6]
arr.delete_if { |a| p a < 4 } # => [4, 5, 6]
puts arr # => [4, 5, 6]
arr.keep_if { |a| p a < 4 } # => [1, 2, 3]
puts arr # => [1, 2, 3]
