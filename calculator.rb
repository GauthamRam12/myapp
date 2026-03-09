puts "Ruby Calculator"
p "Enter the First Number : "
num1 = gets.chomp.to_f
p "Enter operator(+,-,*,/)"
operator = gets.chomp
p "Enter the Second Number : "
num2 = gets.chomp.to_f

case operator
when "+"
  result = num1+num2
when "-"
  result = num1-num2
when "*"
  result = num1*num2
when "/"
  result = num1/num2     
       
end
puts "result: #{result}"