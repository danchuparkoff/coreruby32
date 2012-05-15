=begin
  \netbeans\rubylearn\coreruby32\lib\samples\week2\???.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/23/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: NetBeans 7.1.1 with Ruby for Netbeans Plugin Preview1

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  Exercise3. Call this program (p026zdeafgm2.rb)

    Modify your Deaf Grandma program (Week 3 / Exercise 6): What if grandma doesn't want you to leave? When you
    shout BYE, she could pretend not to hear you. Change your previous program so that you have to shout BYE
    three times in a row. Make sure to test your program: if you shout BYE three times, but not in a row, you
    should still be talking to grandma. You must shout BYE three separate times. If you shout BYEBYEBYE or
    BYE BYE BYE, grandma should pretend not to hear you (and not count it as a BYE).
=end

require 'prompt'
MIN_YEAR = 1930
MAX_YEAR = 1950

  bye_count = 0
  until bye_count == 3

    if 'BYE' == you_speak = prompt('Sonny:')
      bye_count += 1
      puts case bye_count
        when 1
          'Grandma: WHAT, SONNY?'
        when 2
          "Grandma: THESE OLD EARS AIN\'T WHAT THE USED TO BE"
        when 3
          'Grandma: OK, GOODBYE, SONNY'
      end
    else
      bye_count = 0
      puts case you_speak
        when ''
        when you_speak.upcase
          "Grandma: NO, NOT SINCE #{MIN_YEAR + rand(MAX_YEAR - MIN_YEAR + 1)}!"
        else
          'Grandma: HUH?! SPEAK UP, SONNY!'
      end
    end
  end
