=begin
  ~\rubylearn\coreruby32\samples\week1\w1s5_methods.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/13/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: Jetbrains RubyMine 4.0.3

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  This program illustrates some basic use of gets and chomp.
=end

#Variable Initialization
city = ""

#Main
puts "In which city do you live?"
STDOUT.flush
city = gets.chomp
puts "The city is " + city


