=begin
  \netbeans\rubylearn\coreruby32\lib\samples\week2\???.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/23/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: NetBeans 7.1.1 with Ruby for Netbeans Plugin Preview1

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  Exercise1. Write a class UnpredictableString which is a sub-class of String. This sub-class should have a
    method called scramble() which randomly rearranges any string as follows:

    >ruby unpredictablestring.rb
    daano.r n sdt a htIsw taikmgy r
    >Exit code: 0
    # the original string was: "It was a dark and stormy night."
=end

# Main ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

class String
  def scramble
    # Variable Initialization
    used_char_array = Array.new
    out_string = ''
    rand_char_position = 0
    character_range = 0..(self.length - 1)


    # For each char, randomly jump, keep track of used characters, and redraw if necessary
    character_range.each do |index|
      while used_char_array.include? (rand_char_position = rand(character_range))
        rand_char_position = rand(character_range)
      end
      used_char_array[index] = rand_char_position

      out_string << self[rand_char_position]
    end

    #return
    out_string
  end
end

puts "This string".scramble


