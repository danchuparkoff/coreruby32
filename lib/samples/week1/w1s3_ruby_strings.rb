=begin
  ~\rubylearn\coreruby32\samples\week1\w1s3_ruby_strings.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/13/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: Jetbrains RubyMine 4.0.2

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  This program illustrates some basic use of Strings.  "" vs '', concatenation, escapement.
  We also define our first CONSTANT.

  Ruby Strings
  In Ruby, stings are mutable
=end

puts "Hello World"
# Can use " or ' for Strings, but ' is more efficient
puts 'Hello World'
#String Concatenation
puts 'I like' + ' Ruby'
#Escape Sequence
puts 'It\'s my Ruby'
#New here, displays the string three times
puts 'Hello' * 3
#Defining a constant
#More on Constants later, here
#http://rubylearning.com/satishtalim/ruby_names.html
PI = 3.14159
puts PI
