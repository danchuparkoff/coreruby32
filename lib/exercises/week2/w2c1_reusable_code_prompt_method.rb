=begin
  \netbeans\rubylearn\coreruby32\lib\samples\week2\w2c1_reusable_code_prompt_method.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/26/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: NetBeans 7.1.1 with Ruby for Netbeans Plugin Preview1

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  This program illustrates the require call to the reusable code in the prompt.rb file.
  I've also added an until loop into this to replay the #Main section until user hits 0 to exit.
=end

# Main ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

require 'prompt'

# Constant Initialization
MINUTES_IN_HOUR = 60
HOURS_IN_DAY = 24

# leap_year method: returns true for leap years returns false for non-leap years.
def leap_year? (year)
  year % 4 == 0 && year % 100 != 0 || year % 400 == 0
end

# Minutes_in_a_year method repurposed from w1e4 retrofitted with leap_year? method conditional
def minutes_in_this_year(my_year)
  days_in_year = leap_year?(my_year) ? 366 : 355
  minutes_in_year = MINUTES_IN_HOUR * HOURS_IN_DAY * days_in_year
end

# Main ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

your_year = 1
until your_year == 0
  your_year = prompt("Enter any year or '0' to exit: ", 'i')
  #Output string
  puts "There are #{minutes_in_this_year(your_year)} minutes in the year #{your_year}"
end
