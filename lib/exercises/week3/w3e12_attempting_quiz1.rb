=begin
  \netbeans\rubylearn\coreruby32\lib\samples\week2\???.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/23/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: NetBeans 7.1.1 with Ruby for Netbeans Plugin Preview1

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  Something to keep your grey cells ticking:
  I have a database of all the course participants. I want to know the number of participants who have not
  attempted Quiz 1 (is it so scary ?). A student writes a clever Ruby program that creates an array of 0's
  and 1's. 0's indicate that the participant has not attempted the Quiz and the 1's have attempted it.

  Use this array quiz:  quiz = [0,0,0,1,0,0,1,1,0,1]
  and write another clever program to solve my problem. That is display the number of participants who have
  not attempted Quiz 1.

  The output of your program should be as follows:
  The number of participants who did not attempt Quiz 1 is x out of y total participants.
=end

QUIZ = [0,0,0,1,0,0,1,1,0,1]

def on_bits(my_array)
  total_bits = my_array.length
  num_on_bits = my_array.inject { |sum, element| sum + element }
  answer = "#{num_on_bits} out of #{total_bits}"
end

def off_bits(my_array)
  total_bits = my_array.length
  num_on_bits = total_bits - my_array.inject { |sum, element| sum + element }
  answer = "#{num_on_bits} out of #{total_bits}"
end

# Main ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
puts "The number of participants who did not attempt Quiz 1 is #{off_bits(QUIZ)} total participants."
