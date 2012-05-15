=begin
  \netbeans\rubylearn\coreruby32\lib\samples\week2\???.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/23/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: NetBeans 7.1.1 with Ruby for Netbeans Plugin Preview1

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  The next set of exercises are sample questions from the Important Ruby Association Certified Ruby
    Programmer examination. Thanks to Satoshi Asakawa for the Japanese to English translation.
    Select all answers which return true.
=end

# Main ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


  h = { "Ruby" => "Matz", "Perl" => "Larry", "Python" => "Guido" }

  puts h.member?("Matz")
  puts h.member?("Python")
  puts h.include?("Guido")
  puts h.include?("Ruby")
  puts h.has_value?("Larry")
  puts h.exists?("Perl" => "Larry")


