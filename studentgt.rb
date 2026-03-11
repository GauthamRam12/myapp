students = []

def calculate_grade(marks)
  if marks >= 90
    "A"
  elsif marks >= 75
    "B"
  elsif marks >= 60
    "C"
  elsif marks >= 50
    "D"
  else
    "F"
  end
end

loop do
  puts "/-----Student Grade Tracker------/"
  puts "1.Add Student"
  puts "2.View Student"
  puts "3.Exit"
  puts "Choose option:"

  choice = gets.chomp.to_i

  case choice

  when 1
    puts "Enter Student Name:"
    name = gets.chomp

    puts "Enter Student Mark:"
    marks = gets.chomp.to_i

    grade = calculate_grade(marks)

    students << { name: name, marks: marks, grade: grade }

    puts "Student Added Successfully"

  when 2
    students.each do |student|
      puts "Name: #{student[:name]}, Marks: #{student[:marks]}, Grade: #{student[:grade]}"
    end

  when 3
    puts "Exiting program..."
    break

  else
    puts "Invalid option"
  end
end