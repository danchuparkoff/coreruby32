=begin
  ~\rubylearn\coreruby32\samples\week1\w1s7_dynamic_types.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/13/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: Jetbrains RubyMine 4.0.3

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  This program illustrates the dynamic typing of Ruby.  We also learn the .class method.
=end

#Variable Initialization
x = 0

#Main
#Adjust the assignment of x in order to illustrate the dynamicness of variable types.
x = 7           #integer
puts x
puts x.class

x = "house"     #string
puts x
puts x.class

x = 7.5         #float
puts x
puts x.class

#In Ruby, everything you manipulate is an object.
puts 'I love Ruby'.length