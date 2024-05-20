puts 'Height(cm):'
user_height = gets.chomp.to_f

puts 'Weight(Kg):'
user_weight = gets.chomp.to_f

# method to calculate bmi based on user input
def bmi_calculator(height, weight)
  # convert user height from cm to m
  height /= 100

  # calculate bmi
  user_bmi = weight / (height**2)
end

# method to print user condition based on bmi
def user_condition(_height, _weight)
  bmi_results = bmi_calculator(_height, _weight)
  if bmi_results < 16
    puts 'Severe Thinness'
  elsif bmi_results < 17
    puts 'Moderate Thinness'
  elsif bmi_results < 18.5
    puts 'Mild Thinness'
  elsif bmi_results < 25
    puts 'Normal'
  elsif bmi_results < 30
    puts 'Overweight'
  elsif bmi_results < 35
    puts 'Obesse Class I'
  elsif bmi_results < 40
    puts 'Obesse Class II'
  else
    puts 'Obesse Class III'
  end
end

user_condition(user_height, user_weight)
