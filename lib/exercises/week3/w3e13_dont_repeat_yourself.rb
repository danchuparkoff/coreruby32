=begin
  \netbeans\rubylearn\coreruby32\lib\samples\week2\???.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/23/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: NetBeans 7.1.1 with Ruby for Netbeans Plugin Preview1

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  Exercise13 Ruby is a DRY language. Ruby helps you keep your code short and concise. DRY stands for: Don’t Repeat
    Yourself Syntactically, it’s a very efficient language: you can express the same thing with less lines of code.
    As we know, computers are fast enough that more lines of code do not slow them down. But what about you? When
    it comes to debugging and maintaining, the more code you have to deal with, the harder it is to see what it
    does and find the problems that need fixing. Here's some code:

      # The long way
      record = Hash.new
      record[:name] = “Satish”
      record[:email] = “mail@satishtalim.com”
      record[:phone] = “919371006659”

    Rewrite, the above code in one line, the DRY (or Ruby) way.
=end

# Main ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

record = [name: 'Satish', email: 'mail@satishtalim.com', phone: '919371006659']

puts record
