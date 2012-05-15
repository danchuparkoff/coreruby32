=begin
  \netbeans\rubylearn\coreruby32\lib\samples\week2\???.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/23/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: NetBeans 7.1.1 with Ruby for Netbeans Plugin Preview1

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  Exercise15 Select all correct outputs for the following program:
    for i, j in [[1, 2], [3, 4], [5, 6]]
    p [i, j]
    end

    Answers:
    1. [[1, 2], nil]
    [[3, 4], nil]
    [[5, 6], nil]

    2. [nil, [1, 2]]
    [nil, [3, 4]]
    [nil, [5, 6]]

    3. [1, 2]
    [3, 4]
    [5, 6]

    4. Syntax Error
=end

# Main ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#  for i, j in [[1, 2], [3, 4], [5, 6]]
 #   p [i, j]
  #end

a = ["Magazine", "Sunday", "Jump"]
# Answers:
puts '1'
puts a.sort
# a.sort { |s| s }
puts '3'
puts a.sort { |l, r| l <=> r }
puts '4'
puts a.sort { |l, r| l.length <=>  r.length }
puts '5'
puts a.sort_by { |s| s }
puts '6'
puts a.sort_by { |s| s.length }
