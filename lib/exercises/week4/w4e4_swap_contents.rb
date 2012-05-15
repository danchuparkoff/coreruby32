=begin
  \netbeans\rubylearn\coreruby32\lib\samples\week2\???.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/23/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: NetBeans 7.1.1 with Ruby for Netbeans Plugin Preview1

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  Exercise4. Write a Ruby program (call it p028swapcontents.rb) to do the following. Take two text files say
    A and B. The program should swap the contents of A and B. That is after the program is executed, A should
    contain B's contents and B should contains A's contents.
=end

# Main ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
require 'fileutils'

if ARGV.length == 2
  # Backup the originals
  FileUtils.mv(ARGV[0], ARGV[0] + '.bkup')
  FileUtils.mv(ARGV[1], ARGV[1] + '.bkup')

  # Swap the files using backups as the source
  FileUtils.cp(ARGV[1] + '.bkup', ARGV[0])
  FileUtils.cp(ARGV[0] + '.bkup', ARGV[1])

else
  puts <<-usage_output
    swap_contents.rb

    Usage:
      swap_contents.rb <datafile 1> <datafile 2>
    Where:
      <datafile 1> is the first of two filenames
      <datafile 2> is the second of two filenames

    The swap_contents utility will take two file names for input as shown above.  The files will be backed up with
      the extension '.bkup' and then the contents of the two files will be swapped.
  usage_output
end