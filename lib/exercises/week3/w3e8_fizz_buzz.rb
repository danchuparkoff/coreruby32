=begin
  \netbeans\rubylearn\coreruby32\lib\samples\week2\???.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/23/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: NetBeans 7.1.1 with Ruby for Netbeans Plugin Preview1

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  Exercise8. Write a Ruby program that prints the numbers from 1 to 100. But for multiples of three print
    "Fizz" instead of the number and for multiples of five print "Buzz". For numbers which are multiples
    of both three and five print "FizzBuzz".
=end

# Main ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

for i in 1..100
  fizz = (i % 3 == 0)
  buzz = (i % 5 == 0)
  out_string = fizz && buzz ? 'FizzBuzz' : fizz ? 'Fizz' : buzz ? 'Buzz' : i
  puts out_string
end

