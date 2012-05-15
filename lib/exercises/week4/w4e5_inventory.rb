=begin
  \netbeans\rubylearn\coreruby32\lib\samples\week2\???.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/23/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: NetBeans 7.1.1 with Ruby for Netbeans Plugin Preview1

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  Exercise5. Difficulty level: MEDIUM Write a one-line Ruby script that displays on the screen all the files
    in the current folder as well as everything in all its sub folders, in sorted order. Make use of Dir.glob
    method as follows:

    Dir.glob('**/*')
    Name this program inventory.rb.
    Create an inventory file by typing the following at the command prompt:
      ruby inventory.rb > old-inventory.txt
    After a few days, when some files would have been added / deleted from this folder, run the program again like:
      ruby inventory.rb > new-inventory.txt
    Now, write another Ruby script that displays on the screen all the files that have been added in this
    folder since the time the old-inventory.txt was created.
=end

# Main ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# puts Dir.glob('**/*')

m2 = "The future is Ruby" =~ /Ruby/
puts m2