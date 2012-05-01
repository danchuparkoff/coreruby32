=begin
  \netbeans\rubylearn\coreruby32\lib\samples\week2\???.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/23/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: NetBeans 7.1.1 with Ruby for Netbeans Plugin Preview1

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  This program illustrates the reading from and writing to files in ruby.
=end

require 'prompt'

  original_filename = prompt('Please enter the name of the file to open:')
  system("cp #{original_filename} #{original_filename}.bkup") or system("copy #{original_filename} #{original_filename}.bkup")

  infile = File.new(original_filename, 'r')
  outfile = File.new("#{original_filename}.out", 'w')

  while this_line = infile.gets
    revised_line = ''
    this_line.split.each do |this_word|
      this_word = 'inserted word' if this_word != 'test'
      revised_line << " #{this_word}"
    end
    revised_line << "\n"
    outfile.puts revised_line
  end

  infile.close
  outfile.close

  system("rm #{original_filename}") or system("del #{original_filename}")
  system("mv #{original_filename}.out #{original_filename}") or system("rename #{original_filename}.out #{original_filename}")
