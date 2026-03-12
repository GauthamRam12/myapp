students = [
  {name: "Ram", marks: 85},
  {name: "Sam", marks: 70},
  {name: "John", marks: 90}
]

sorted = students.sort_by { |s| s[:marks] }

puts sorted