begin
  num = 10 / 0

rescue => e
  File.open("error.log", "a") do |file|
    file.puts "Error: #{e.message}"
    file.puts "Time: #{Time.now}"
  end

  puts "Something went wrong. Check error.log"
end