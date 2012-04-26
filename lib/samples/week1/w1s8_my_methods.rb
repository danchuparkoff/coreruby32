=begin
  ~\rubylearn\coreruby32\samples\week1\w1s8_my_methods.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/13/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: Jetbrains RubyMine 4.0.3

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  This program illustrates the creation of methods.  Methods are created using
  the "def" keyword and are closed using the "end" keyword.
  Method arguments can be specified in parenthesis in the definition statement,
  and optionally without the parenthesis, although the second case requires the
  enclosing the method and it's args in parens during the call.'
=end

#Variable Initialization
name = ''
name2 = ''

#Main
#Define the Method
def hello
  'Hello'
end
#Use the method
puts hello

#Define a method with an argument in parenthesis
def hello_with_arg(name)
  'Hello ' + name
end
#use the method
puts(hello_with_arg('Dan Chuparkoff'))

#Define a method with an argument not in parenthesis (alternative)
def hello_with_arg2 name2
  'Hello ' + name2
end
#use the method
puts(hello_with_arg2 'Dan Chuparkoff')