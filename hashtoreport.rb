students = { "Gautham" => 85,"Rahul" => 92,"Priya" => 74}

def grade(marks)
  if marks >= 90
    "A"
  elsif marks >= 75
    "B"
  elsif marks >= 60
    "C"
  else
    "F"
  end
end

puts "------ Student Report ------"

students.each do |name, marks|
  puts "Name: #{name}, Marks: #{marks}, Grade: #{grade(marks)}"
end