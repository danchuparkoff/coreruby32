=begin
  ~\rubylearn\coreruby32\samples\week2\w2s1_expression_interpolation.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/22/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: Jetbrains RubyMine 4.0.3

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com


  This program illustrates that n the double-quoted string literals, Ruby does more work than in single quoted ones.
  First, it looks for substitutions - ()sequences that start with a backslash character) and replaces them with some
  binary value. The second thing that Ruby does with double-quoted strings is expression interpolation. Within the
  string, the sequence #{expression} is replaced by the value of expression. In this program, the value returned
  by a Ruby method is the value of the last expression evaluated, so we can get rid of the temporary variable (result)
  and the return statement altogether.
=end

#Main
def say_goodnight(name)
  result = "Good night, #{name}"
  return result
end
puts say_goodnight('Dan')

# modified program - note that return is unnecessary
def say_goodnight2(name)
  "Good night, #{name}"
end
puts say_goodnight2('Dan')