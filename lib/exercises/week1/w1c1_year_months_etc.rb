=begin
  ~\rubylearn\coreruby32\exercises\week1\w1e4_minutes_in_a_year.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/16/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: Jetbrains RubyMine 4.0.3

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  Assignment: Using what we have learned so far: I wonder if anyone could have a crack
  at working out the age in years and months form. For example “I’m 32 years and 6 months old.”
  Use the following values for age_in_seconds:
      979000000, 2158493738, 246144023, 1270166272, 1025600095
=end

def convert_secs_to_yrs_mos(my_seconds)
  # Step from seconds to years preserving the steps for subsequent needs
  my_minutes = my_seconds.to_f / 60
  my_hours = my_minutes / 60
  my_days =  my_hours / 24
  my_years = my_days / 365

  # Determine months by mod'ing to get the remainder and then multiplying the yearfraction by 12.
  my_months = my_years % 1 * 12

  # Truncate years' decimal by converting to_i just before the return
  my_yrs_mos = "#{my_years.to_i} years and #{my_months.to_i} months"
end

def age_convert(age_in_seconds)
  # Convert an Age in Seconds to Years/Months & Output to the User
  # Note: convert_secs_to_yrs_mos() can be used for other non-age contexts so age-related words like 'old' have been
  #   added outside of the method.
  user_message = "I'm #{convert_secs_to_yrs_mos(age_in_seconds)} old."
  puts user_message
end

# Main
# Call convert and output functions for each of the seconds
  age_convert(979000000)
  age_convert(2158493738)
  age_convert(246144023)
  age_convert(1270166272)
  age_convert(1025600095)