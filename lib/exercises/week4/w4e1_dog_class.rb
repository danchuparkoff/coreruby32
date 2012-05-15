=begin
  \netbeans\rubylearn\coreruby32\lib\samples\week4\???.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/23/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: NetBeans 7.1.1 with Ruby for Netbeans Plugin Preview1

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  Exercise1. Write a class called Dog, that has name as an instance variable and the following methods:

    bark(), eat(), chase_cat()
    I shall create the Dog object as follows:
    d = Dog.new('Leo')
=end

# Main ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
class Dog
  def initialize(name)
    @name = name    # Instance variable
  end

  def bark          # Method
    'Woof Woof!'
  end

  def eat           # Method
    'Nom Nom Nom!'
  end

  def chase_cat     # Method
    'Woof Woof! Meow Eeeck!'
  end
end

d = Dog.new('Leo')

puts d.bark
puts d.eat
puts d.chase_cat

