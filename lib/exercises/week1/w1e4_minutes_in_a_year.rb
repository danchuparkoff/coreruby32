=begin
  ~\rubylearn\coreruby32\exercises\week1\w1e4_minutes_in_a_year.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/16/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: Jetbrains RubyMine 4.0.3

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  Assignment: Write a Ruby program that tells you how many minutes there are
  in a year (do not bother right now about leap years etc.).
=end

# Variable Initialization
DAYS_IN_YEAR = 365
HOURS_IN_DAY = 24
MINUTES_IN_HOUR = 60
minutes_in_year = nil
user_message = nil

# Main
# Calculation
minutes_in_year = MINUTES_IN_HOUR * HOURS_IN_DAY * DAYS_IN_YEAR

#Output string
user_message = 'There are ' + minutes_in_year.to_s + ' minutes in a year. Thank you for asking.'
puts user_message