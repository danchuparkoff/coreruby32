=begin
  ~\rubylearn\coreruby32\samples\week1\w1s4_string_usage.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/13/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: Jetbrains RubyMine 4.0.2

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  This program illustrates some basic use of Variables and String Operations.
=end

# Defining a Constant
PI = 3.14159
puts PI
# Defining a lccal variable
myString = 'I love my city, Chicago'
puts myString
=begin
  Conversions
  .to_i, .to_f, .to_s
=end
var1 = 5;
var2 = '2'
puts var1 + var2.to_i
# << appending to a string
a = 'hello '
a<<'world.
I love this world...'
puts a
=begin
  << marks the start of the string literal and
  is followed by a delimiter of your choice.
  The string literal then starts from the next
  new line and finishes when the delimiter is
  repeated again on a line on it's own.  This
  is known as Here document syntax.'
=end
a = <<END_STR
This is the string
And a second line
END_STR
puts a
