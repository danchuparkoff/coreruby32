=begin
  ~\rubylearn\coreruby32\samples\week2\w2s1_string_compare.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/22/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: Jetbrains RubyMine 4.0.3

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  This program illustrates that Strings have several methods for testing equality.  The most common one is == (double
  equals sign). Another equality-test instance method, String.eql?, tests two strings for identical content.
  It returns the same result as ==. A third instance method, String.equal?, tests whether two strings are
  the same object.
=end

# Main ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

s1 = 'Jonathan'
s2 = 'Jonathan'
s3 = s1

# The most common method for comparing Strings is ==
if s1 == s2
  puts 'Both Strings have identical content'
else
  puts 'Both Strings do not have identical content'
end

# String#eql?, tests two strings for identical content.
# It returns the same result as ==
if s1.eql?(s2)
  puts 'Both Strings have identical content'
else
  puts 'Both Strings do not have identical content'
end

# String#equal?, tests whether two strings are the same object
if s1.equal?(s2)
  puts 'Two Strings are identical objects'
else
  puts 'Two Strings are not identical objects'
end
if s1.equal?(s3)
  puts 'Two Strings are identical objects'
else
  puts 'Two Strings are not identical objects'
end