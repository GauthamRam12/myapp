puts "Enter a number:"
begin
  num = Integer(gets.chomp)
  puts "You entered #{num}"
rescue
  puts "Invalid input! Not a number."
end