puts "-----Tip Calculator-----"

puts "Enter the bill amount"
bill = gets.chomp.to_f

puts "Enter the tip percentage"
tip_percentage = gets.chomp.to_f

tip = (bill*tip_percentage)/100
Total = bill+tip

puts "------------------------"
puts "Bill amount: #{bill}"
puts "tip amount : #{tip}"
puts "total amount : #{Total}"