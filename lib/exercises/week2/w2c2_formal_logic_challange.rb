=begin
  \netbeans\rubylearn\coreruby32\lib\samples\week2\w2c2_formal_logic_challange.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/26/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: NetBeans 7.1.1 with Ruby for Netbeans Plugin Preview1

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  This program illustrates
=end

# Main ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

puts "with ?: : "
puts 5 > 3 ? "yeah" : "boo" #=> yeah
puts 5 < 3 ? "yeah" : "boo" #=> boo

puts "\nwith and/or: "
5 > 3 and (puts "yeah" or puts "boo") #=> yeah
5 < 3 and (puts "yeah" or puts "boo") #=> boo

puts "\nwith &&/||: "
puts 5 > 3 && "yeah" || "boo" #=> yeah
puts 5 < 3 && "yeah" || "boo" #=> boo