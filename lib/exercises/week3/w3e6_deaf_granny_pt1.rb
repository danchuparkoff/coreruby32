=begin
  \netbeans\rubylearn\coreruby32\lib\samples\week2\???.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/23/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: NetBeans 7.1.1 with Ruby for Netbeans Plugin Preview1

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  Exercise 6. Write a Deaf Grandma program. Whatever you say to grandma (whatever you type in), she should
    respond with HUH?! SPEAK UP, SONNY!, unless you shout it (type in all capitals). If you shout, she can hear
    you (or at least she thinks so) and yells back, NO, NOT SINCE 1938! To make your program really believable,
    have grandma shout a different year each time; maybe any year at random between 1930 and 1950.
    You can't stop talking to grandma until you shout BYE.

    Adapted from Chris Pine's Book.

    For example:
      You enter: Hello Grandma
      Grandma responds: HUH?! SPEAK UP, SONNY!
      You enter: HELLO GRANDMA
      Grandma responds: NO, NOT SINCE 1938!
=end

# Main ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

require 'prompt'
MIN_YEAR = 1930
MAX_YEAR = 1950

  you_speak = prompt('You enter: ')
  while you_speak != 'BYE'
    if you_speak != you_speak.upcase
      puts 'HUH?! SPEAK UP, SONNY!'
    else
      puts "NO, NOT SINCE #{rand(MAX_YEAR - MIN_YEAR + 1) + MIN_YEAR}!"
    end
    you_speak = prompt('You enter: ')
  end












