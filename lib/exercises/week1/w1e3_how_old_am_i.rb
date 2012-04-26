=begin
  ~\rubylearn\coreruby32\exercises\week1\w1e3_how_old_am_i.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/16/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: Jetbrains RubyMine 4.0.3

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  Assignment: Write a Ruby program that displays how old I am, if I am 979000000
  seconds old. Display the result as a floating point (decimal) number to two decimal
  places (for example, 17.23).
=end

# Variable Initialization
age_in_seconds = nil
age_in_minutes = nil
age_in_hours = nil
age_in_days = nil
age_in_months = nil
age_in_years = nil
user_message = nil

# Main
# Convert from Seconds up to Years. Don't forget to convert to float.'
age_in_seconds = 979000000
age_in_minutes = age_in_seconds.to_f / 60
age_in_hours = age_in_minutes / 60
age_in_days =  age_in_hours / 24
age_in_years = age_in_days / 365

#Output string
user_message = 'You are ' + sprintf("%.2f", age_in_years) + ' years old (or ' + sprintf("%d",age_in_years) + \
    ' years & ' + sprintf("%d",age_in_days - (age_in_years.to_int * 365)) + ' days old).'
puts user_message
# TODO: In order to properly account for leap years we should query for the users birthdate
