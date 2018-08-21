class CalcEngine

  def run_calculator
    puts "------------"
    puts "Which calculator do you want to use,"
    puts "(b)asic, (a)dvance, (i)BMI, or (t)rip calculator?"
    user_choice = gets.chomp
    if user_choice == "b"
      puts "------------"
      puts "My Basic Calculator"
      puts "Enter 2 numbers"
      num1 = gets.chomp.to_f
      operator = gets.chomp
      num2 = gets.chomp.to_f
      puts "------------"
      if operator == "+"
        puts addition(num1, num2)
      end
      if operator == "-"
        puts subtraction(num1, num2)
      end
      if operator == "*"
        puts multiplication(num1, num2)
      end
      if operator == "/"
        puts division(num1, num2)
      end
      puts "------------"
      end

    if user_choice == "a"
      puts "------------"
      puts "My Advance Calculator"
      puts "Which would you like to use, p(ower), or (s)quare root?"
      option = gets.chomp
      if option == "p"
        puts "------------"
        puts "Enter your base and your exponent, respectively"
        num1 = gets.chomp.to_i
        power = gets.chomp.to_i
        puts "------------"
        puts advance_power(num1, power).round(2)
        puts "------------"
      end
      if option == "s"
        puts "------------"
        puts "Enter your number"
        num1 = gets.chomp.to_f
        puts "------------"
        puts advance_sqroot(num1).round(2)
        puts "------------"
      end
    end

    if user_choice == "i"
      puts "------------"
      puts "My BMI Calculator"
      puts "Which would you like to use, (m)etric system, or (i)mperial system?"
      option = gets.chomp
      if option == "m"
        puts "------------"
        puts "Enter your weight in kg"
        weight = gets.chomp.to_f
        puts "Enter your height in m"
        height = gets.chomp.to_f
        puts "------------"
        puts bmi_metric(weight, height)
        puts "------------"
      end
      if option == "i"
        puts "------------"
        puts "Enter your weight in lb"
        weight = gets.chomp.to_f
        puts "Enter your height in inch"
        height = gets.chomp.to_f
        puts "------------"
        puts bmi_imperial(weight, height)
        puts "------------"
      end
    end

    if user_choice == "t"
      puts "------------"
      puts "My Trip Calculator"
      puts "Enter distance in km"
      distance = gets.chomp.to_f
      puts "Enter your fuel efficiency (mpg)"
      mpg = gets.chomp.to_f
      puts "Enter cost per gallon"
      cost_per_gal = gets.chomp.to_f
      puts "Enter your speed"
      speed = gets.chomp.to_f
      puts "------------"
      puts trip_calc(distance, mpg, cost_per_gal, speed)
      puts "------------"
    end

  end

  def addition(num1, num2)
    num1 + num2
  end

  def subtraction(num1, num2)
    num1 - num2
  end

  def multiplication(num1, num2)
    num1 * num2
  end

  def division(num1, num2)
    num1/num2
  end

  def advance_power(num1, power)
    num1**power
  end

  def advance_sqroot(num1)
    Math.sqrt(num1)
  end

  def bmi_metric(weight, height)
    (weight/(height**2)).round(1)
  end

  def bmi_imperial(weight, height)
    ((weight/(height**2))*703).round(1)
  end

  def trip_calc(distance, mpg, cost_per_gal, speed)
    time = distance / speed
    cost = cost_per_gal*distance
    return "Your trip will take #{time.round(1)} hrs and cost £#{cost.round(2)}"
  end
end

# calc = CalcEngine.new()
# calc.run_calculator
