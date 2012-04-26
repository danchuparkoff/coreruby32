=begin ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ~\rubylearn\coreruby32\exercises\week1\w1e6_convert_fahr_to_cel.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/16/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: Jetbrains RubyMine 4.0.3

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  Assignment: Write a method called convert that takes one argument which is a temperature
  in degrees Fahrenheit. This method should return the temperature in degrees Celsius.
  To format the output to say 2 decimal places, we can use the Kernel's format method.
=end

# Method Declaration ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
def convert(temp_in_fahrenheit)
  # Convert to Celsius
  temp_in_celsius = 5.0 / 9.0 * (temp_in_fahrenheit.to_f - 32.0)
end

# Get Temp & Call conversion method
print "Enter a Temperature in Fahrenheit:"
STDOUT.flush
your_temp_in_f = gets.chomp

# Output to the User
user_message = your_temp_in_f.to_s + ' degrees Fahrenheit is ' + format("%.2f",convert(your_temp_in_f)) \
    + ' degrees Celsius.'
puts user_message
