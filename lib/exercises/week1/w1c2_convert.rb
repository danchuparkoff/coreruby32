=begin
  ~\rubylearn\coreruby32\exercises\week1\w1e4_minutes_in_a_year.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/16/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: Jetbrains RubyMine 4.0.3

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  Assignment: Write a program that asks for user input, then changes that input from
  one temperature unit to another based upon the user's wishes.
=end


# Prompt User for Instructions
  def get_temperature()
    print "Enter a Fahrenheit or Celsius Temperature,\n"
    print "    a Scale to convert from (F or C),\n"
    print "    & a scale to convert to (F or C).\n"
    print "    Example: 100 F C \n"
    print "--> "
    STDOUT.flush
    user_input = gets.chomp
  end

  def extract_temp_to_convert(my_user_input)
    my_user_input_array = my_user_input.split
    my_temp_to_convert = my_user_input_array[0].to_f
  end

  def extract_orig_scale(my_user_input)
    my_user_input_array = my_user_input.split
    my_orig_scale = my_user_input_array[1].to_s
  end

  def extract_dest_scale(my_user_input)
    my_user_input_array = my_user_input.split
    my_dest_scale = my_user_input_array[2].to_s
  end

  def validate_string(this_value, acceptable_values)
    acceptable_values.include? this_value
  end

# Main
  # Get User Input and Parse Values
  user_input = get_temperature()
  temperature_to_convert = extract_temp_to_convert(user_input)
  originating_scale = extract_orig_scale(user_input)
  destination_scale = extract_dest_scale(user_input)




  # Confirm Output
  puts "Converting
    Temp:  #{temperature_to_convert}
    From: #{originating_scale}
    To:   #{destination_scale}"

  puts validate_string(originating_scale, "FfCc")
  puts validate_string(destination_scale, "FfCc")



