=begin
  \netbeans\rubylearn\coreruby32\lib\samples\week2\???.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/23/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: NetBeans 7.1.1 with Ruby for Netbeans Plugin Preview1

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  Exercise10. Write a Ruby program that, when given an array: collection = [1, 2, 3, 4, 5] calculates the
    sum of its elements.
=end

# Main ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

require 'prompt'
def sum_elements(my_array)
  my_sum = 0
  my_array.each {|element| my_sum += element }
  my_sum
end

in_string = prompt('Enter a collection of numbers (with brackets separated by commas):')
puts sum_elements(eval(in_string))