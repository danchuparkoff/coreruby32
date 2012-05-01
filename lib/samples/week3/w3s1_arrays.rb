=begin
  \netbeans\rubylearn\coreruby32\lib\samples\week3\w3s1_arrays.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/29/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: NetBeans 7.1.1 with Ruby for Netbeans Plugin Preview1

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  This program illustrates the use of Ruby Arrays
=end

# Empty array
  my_array1 = []
# Array index starts from 0
  puts my_array1[0]

# an array holding a single number
  my_array2 = [5]
  puts my_array2[0]

# an array holding two strings
  my_array3 = ['Hello', 'Goodbye']
  puts my_array3[0]
  puts my_array3[1]

  flavor = 'mango'
# an array whose elements are pointing
# to three objects - a float, a string and another array
  my_array4 = [80.5, flavor, [true, false]]
  puts my_array4[2]

# a trailing comma is ignored
  name = ['Dan', 'Kathy', 'Joe', 'Tom',]
  puts name[0]
  puts name[1]
  puts name[2]
  puts name[3]
# the next one outputs nil
# nil is Ruby's way of saying nothing
  puts name[4]
# we can add more elements too
  name[4] = 'New York'
  puts name[4]
# we can add anything!
  name[5] = 4.33
  puts name[5]
# we can add an array to an array
  name[6] = [1, 2, 3]
  puts name[6]

# some methods on arrays
  newarr = [45, 23, 1, 90]
  puts newarr.sort
  puts newarr.length
  puts newarr.first
  puts newarr.last

# method each (iterator) - extracts each element into loc
# do end is a block of code
# we shall talk about blocks soon here -
# http://rubylearning.com/satishtalim/ruby_blocks_and_procs.html
# variable loc refers to each item in the array as it goes through the loop
  locations = ['New York', 'Chicago', 'San Francisco']

  locations.each do |loc|
    puts 'I love ' + loc + '!'
    puts "Don't you?"
  end

# delete an entry in the middle and shift the remaining entries
  locations.delete('Chicago')
  locations.each do |loc|
    puts 'I love ' + loc + '!'
    puts "Don't you?"
  end