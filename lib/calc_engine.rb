class CalcEngine

  def run_calculator
    puts "------------"
    puts "Running Calc -  Adding numbers"
    puts "Give 2 numbers"
    num1 = gets.chomp.to_i
    puts "+"
    num2 = gets.chomp.to_i
    puts "------------"
    puts add_two_numbers(num1, num2)
    puts "------------"

    # puts "What is you name?"
    # user_input = gets.chomp
    # puts "Your name is #{user_input}"
    # puts "Add code here to finish calculator"
    puts "------------"
  end

  def add_two_numbers(num1, num2)
    num1 + num2
  end

end

calc = CalcEngine.new()
calc.run_calculator
