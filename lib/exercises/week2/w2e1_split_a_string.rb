=begin ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ~\rubylearn\coreruby32\exercises\week2\w2e1_split_a_string.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/21/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: Jetbrains RubyMine 4.0.3

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  Assignment: Write a program that processes the string
  s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"
  a line at a time, using all that we have learned so far. The expected output is:
    Line 1: Welcome to the forum.
    Line 2: Here you can learn Ruby.
    Line 3: Along with other members.
=end

# A line splitting method, parsing a string on each newline using .split and putting the result back out with line numbers.
def line_split (in_string)
  #split the incoming string on each newline
  my_string_array = in_string.split("\n")

  # put each element out to the screen
  my_string_array.each_index do |index|
    puts "Line #{index + 1}: #{my_string_array[index]}"
  end
end

# A line splitting method, parsing a string on each newline using .split and putting the result back out with line numbers.
def line_split2 (in_string)
  #split the incoming string on each newline
  my_string_array = in_string.split("\n")

  my_string_array.each_index { |index| puts "Line #{index + 1}: #{my_string_array[index]}"}
end

# Main ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
initial_string = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"
line_split(initial_string)
line_split2(initial_string)



require 'benchmark'

# Setting up the things we want to benchmark with.  That way we can easily change things here.
iterations = 100000

my_string = "1\n2\n3\n4\n"
my_string_return = "\n"
my_regex_return = /\n/
my_singlestring = '\n'

Benchmark.bmbm(12) do |x|
  x.report("string split") { iterations.times {my_string.split(my_string_return)} }
  x.report("regexp split") { iterations.times {my_string.split(my_regex_return)} }
  x.report("single split") { iterations.times {my_string.split(my_singlestring)} }
end