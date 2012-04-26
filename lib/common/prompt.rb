=begin
  \netbeans\rubylearn\coreruby32\lib\common\prompt.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/26/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: NetBeans 7.1.1 with Ruby for Netbeans Plugin Preview1

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  This program illustrates the creation of a lib method for intended reuse by remotely calling this file using the
  require method.  Make sure the directory where this file is stored is in the RUBYPATH environment variable.
=end

# Main ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

def prompt(message, my_type = 'S')
  print "#{message}: "
  STDOUT.flush

  case my_type.upcase!
  when 'I'
    gets.to_i
  when 'F'
    gets.to_f
  else
    gets.chomp
  end
end