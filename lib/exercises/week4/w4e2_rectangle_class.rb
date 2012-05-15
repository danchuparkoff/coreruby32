=begin
  \netbeans\rubylearn\coreruby32\lib\samples\week2\???.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/23/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: NetBeans 7.1.1 with Ruby for Netbeans Plugin Preview1

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  Exercise2. Write a Rectangle class. I shall use your class as follows:
    r = Rectangle.new(23.45, 34.67)
    puts "Area is = #{r.area}"
    puts "Perimeter is = #{r.perimeter}"

=end

# Main ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
class Rectangle
  def initialize(length, width)
    @length = length
    @width = width
  end

  def area
    @length.to_f * @width
  end

  def perimeter
    2.0 * @length + 2.0 * @width
  end
end

my_shape = Rectangle.new(12.3,2.247)
puts my_shape.area
puts my_shape.perimeter