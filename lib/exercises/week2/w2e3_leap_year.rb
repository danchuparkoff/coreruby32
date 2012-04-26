=begin
  \netbeans\rubylearn\coreruby32\lib\samples\week2\w2e3_leap_year.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/24/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: NetBeans 7.1.1 with Ruby for Netbeans Plugin Preview1

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  Exercise3. Write a method leap_year?. It should accept a year value from the user, check whether it's a leap year,
  and then return true or false. With the help of this leap_year?() method calculate and display the number of minutes
  in a leap year (2000 and 2004) and the number of minutes in a non-leap year (1900 and 2005). Note: Every year
  whose number is divisible by four without a remainder is a leap year, excepting the full centuries, which,
  to be leap years, must be divisible by 400 without a remainder. If not so divisible they are common years.
  1900, therefore, is not a leap year.
=end

# Constant Initialization
  MINUTES_IN_HOUR = 60
  HOURS_IN_DAY = 24

# leap_year method: returns true for leapyears returns false for non-leapyears.
  def leap_year? (year)
    year % 4 == 0 && year % 100 != 0 || year % 400 == 0
  end

# Minutes_in_a_year method repurposed from w1e4 retrofitted with leap_year? method conditional
  def minutes_in_this_year(my_year)
    days_in_year = leap_year?(my_year) ? 366 : 355
    minutes_in_year = MINUTES_IN_HOUR * HOURS_IN_DAY * days_in_year
  end

# Main ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  print "Enter any year and this method will convert it to a number of minutes:"
  STDOUT.flush
  your_year = gets.chomp

  #Output string
  user_message = "There are #{minutes_in_this_year(your_year.to_i)} minutes in the year #{your_year}"
  puts user_message
