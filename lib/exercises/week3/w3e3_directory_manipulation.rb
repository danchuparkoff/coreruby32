=begin
  \netbeans\rubylearn\coreruby32\lib\samples\week2\???.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/23/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: NetBeans 7.1.1 with Ruby for Netbeans Plugin Preview1

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  This program illustrates some directory manipulation operations using the class Dir.
    * Display your current working directory.
    * Create a new directory tmp under your working directory.
    * Change your working directory to tmp
    * Display your current working directory.
    * Go back to your original directory.
    * Delete the tmp directory.
=end
require 'directory_utils'
NUM_OF_TMP_FILES = 10

# Main ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  where_am_i()
  Dir.mkdir('tmp')
  Dir.chdir('.\tmp')
  where_am_i()

  # Create some temp files
  quick_files('C',NUM_OF_TMP_FILES)

  Dir.foreach('.') {|dir_file| puts dir_file}

  # Delete those temp files
  quick_files('D',NUM_OF_TMP_FILES)

  Dir.chdir('..')
  Dir.rmdir('tmp')
  where_am_i()
