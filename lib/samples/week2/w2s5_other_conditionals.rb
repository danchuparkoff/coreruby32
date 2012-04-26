=begin
  ~\rubylearn\coreruby32\samples\week2\w2s5_other_conditionals.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/23/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: Jetbrains RubyMine 4.0.3

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  This program illustrates the some additional conditional constructs.
  Some common conditional operators are: ==, != >=, <=, >, <
=end

# Main ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Unless ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # unless, as a statement or a modifier, is the opposite of if: it executes code only if an associated expression
  # evaluates to false or nil. Ruby's unless construct begins with unless and ends with end. The body is the text
  # between the two.  The method Kernel.exit terminates your program, returning a status value to the operating system.
  unless ARGV.length == 2
    puts "Usage: program.rb 23 45"
    exit
  end

  # While ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Loops like the while loop are also available.
  var = 0
  while var < 10
    puts var.to_s
    var += 1
  end

  # The ?: Operator ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # As a concise alternative to simple if/else statements we can use the conditional or ternary ?: operator.
  # It is the only ternary operator (three operands) in Ruby. It has the following basic structure:
  # (condition) ?
  #   (result if condition is true) :
  #   (result if condition is false)
  age = 15
  puts (13...19).include?(age) ? "teenager" : "not a teenager"

  # The ternary operator also can be useful for conditional assignments:
  age = 23
  person = (13...19).include?(age) ? "teenager" : "not a teenager"
  puts person # => "not a teenager"

  # STATEMENT MODIFIERS ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Ruby statement modifiers are a useful shortcut if the body of an if or while statement is just a single expression.
  # Simply write the expression, followed by if or while and the condition. For example, here's a simple if statement.

  puts "Enrollments will now Stop" if participants > 2500

  # CASE ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # This form is fairly close to a series of if statements: it lets you list a series of conditions and execute a
  # statement corresponding to the first one that's true. For example, leap years must be divisible by 400,
  # or divisible by 4 and not by 100. Also, remember that case returns the value of the last expression executed.
  year = 2000
  leap = case
       when year % 400 == 0 then true
       when year % 100 == 0 then false
       else year % 4   == 0
       end
  puts leap  # output is: true


