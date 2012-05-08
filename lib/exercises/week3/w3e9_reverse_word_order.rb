=begin
  \netbeans\rubylearn\coreruby32\lib\samples\week2\???.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/23/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: NetBeans 7.1.1 with Ruby for Netbeans Plugin Preview1

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  Exercise9. Given a string, write a program to reverse the word order (rather than character order). The
    String and Array classes provide methods which will be very helpful for solving this exercise.
=end

# Main ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

require 'prompt'

def reverse_string(in_string)
  out_string = ''

  # Look for initial Capital
  yes_caps = in_string[0] == in_string[0].upcase

  # Look for Punctuation Mark at end
  last_char_pos = in_string.length - 1
  yes_punct = in_string[last_char_pos] =~ /[.!?]/
  if yes_punct
    punct_mark = in_string[last_char_pos]
  end

  my_sentence_array = in_string.split
  each_word = my_sentence_array.length
  while each_word > 0
    this_word = my_sentence_array[each_word - 1]
    case each_word
      when my_sentence_array.length # original last word / new first word
        if yes_caps
          this_word[0] = this_word[0].upcase
        end
        if yes_punct
          this_word = this_word[0..this_word.length - 2]
        end
        out_string << this_word

      when 1 # original first word / new last word
        if yes_caps
          this_word[0] = this_word[0].downcase
        end
        out_string << this_word
        if yes_punct
          out_string << punct_mark
        end

      else # all other words
        out_string << this_word
    end
    out_string << ' '
    each_word -= 1
  end
  out_string
end

get_string = prompt('Enter some text and this method will reverse the order of the words:')
puts reverse_string(get_string)
