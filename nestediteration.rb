students = {
  "Gautham" => { math: 85, science: 90 },
  "Rahul" => { math: 78, science: 88 }
}

students.each do |name, subjects|
  puts "Student: #{name}"

  subjects.each do |subject, marks|
    puts "#{subject}: #{marks}"
  end

end