=begin
  ~\rubylearn\coreruby32\samples\week1\w1s6_fahr_to_cel.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/13/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: Jetbrains RubyMine 4.0.3

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  This program illustrates extends our use of gets and chomp.
=end

#Variable Initialization
temp_in_fahrenheit = ""
temp_in_celsius = ""

#Main
#Collect the Temp from the STDOUT and chomp the /n character.
puts 'Enter temperature in Fahrenheit: '
STDOUT.flush
temp_in_fahrenheit = gets.chomp

#Convert the Fhar. String to Float, then Convert the Value into Celcius
temp_in_celsius = (((temp_in_fahrenheit.to_f - 32.0) / 9.0) * 5.0)

#Display the converted Celcius float in 2 decimal places wrapped in output copy
puts 'Temperature ' + temp_in_fahrenheit + ' degree Fahrenheit = ' + \
  format("%.2f", temp_in_celsius) + ' degree Celsius'
