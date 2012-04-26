=begin
  \netbeans\rubylearn\coreruby32\lib\samples\week2\???.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/23/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: NetBeans 7.1.1 with Ruby for Netbeans Plugin Preview1

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  This program illustrates the use of the .split method combined with the .each_index method.  
=end

# A line splitting method, parsing a string on each newline using .split and putting the result back out with line numbers.
def line_split (in_string)
  #split the incoming string on each newline
  my_string_array = in_string.split("\n")

  # put each element out to the screen
  my_string_array.each_index do |index|
    puts "Line #{index + 1}: #{my_string_array[index]}"
  end
end


# Main ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


