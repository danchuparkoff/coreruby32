=begin
  \netbeans\rubylearn\coreruby32\lib\samples\week2\???.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/23/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: NetBeans 7.1.1 with Ruby for Netbeans Plugin Preview1

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  This program illustrates
=end

  def where_am_i()
    puts "Where am I? #{Dir.pwd}"
  end

  def quick_files(method_verb, num_files)
    num_files.times do |i|
      case method_verb.upcase
        when 'C', 'CREATE'
          File.open("#{i}file.txt", 'w') do |a_file|
            a_file.puts "#{i}\n"
        end
        when 'D', 'DELETE'
            File.delete("#{i}file.txt")
        end
      end
  end