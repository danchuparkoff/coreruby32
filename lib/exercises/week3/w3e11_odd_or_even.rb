=begin
  \netbeans\rubylearn\coreruby32\lib\samples\week2\???.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/23/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: NetBeans 7.1.1 with Ruby for Netbeans Plugin Preview1

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  Exercise11. Write a Ruby program that, when given an array: collection = [12, 23, 456, 123, 4579]
    prints each number, and tells you whether it is odd or even.
=end

require 'prompt'
  def odd_even(my_array)
    my_array.each do |this_item|
      print this_item
      if this_item =~ /^[-+]?[0-9]+$/
        puts this_item.to_i % 2 == 0 ? ': even' : ': odd'
      else
        puts ': only integers can be even or odd.'
      end
    end
  end

  # Main ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  in_string = prompt('Enter a collection of numbers (without brackets separated by commas):')
  odd_even(in_string.split(',').map)

