=begin
  ~\rubylearn\coreruby32\exercises\week1\e001_operator_precedence.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/15/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: Jetbrains RubyMine 4.0.3

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  This program illustrates operator precedence between the assignment and the 'or'
  operator.
=end

# Variable Initialization
x = nil
y = nil
z = nil

# Main
y = false
z = true

# Because of the low operator-precedence of OR, I suspect that the Ruby interpreter will first execute
#   the assignment and then the OR statement. Because of the the "do_something() or die it didn't work"
#   rule for OR, the assignment operation of x=y should execute successfully and I believe it will thus
#   return 'true'. I would expect that the second half of the OR will then not be executed and the
#   resulting value of x should equal y, or 'false'.
x = y or z
# Expected:  x should equal false
puts x

# Here, I suspect that because the operator precedence for 'assignment' is higher than 'or', I don't believe
#   that the parenthesis change the order of operations.  This statement should execute exactly as above.
#   The #Ruby interpreter will first execute the assignment and then the OR statement. Because of the the
#   "do_something() or die it didn't work" rule for OR, the assignment operation of x=y should execute
#   successfully and I believe it will thus return 'true'. I would expect that the second half of the OR
#   will then not be executed and the resulting value of x should equal y, or 'false'.
(x = y) or z
# Expected:  x should equal false
puts x

# And finally, here because of the parenthesis, I suspect that the Ruby interpreter will first evaluate
#   the OR statement y or z. Because y is false, and because of the "do_something() or die it didn't work" rule
#   for OR, I would this OR statement should return the value of z which is 'true'.  This value will be
#   assigned to x.
x = (y or z)
# Expected:  x should equal true
puts x