file = File.open("data.csv")     #Opens the CSV file
headers = file.readline.chomp.split(",")    #First line  "name,age,city" ,#After split  ["name", "age", "city"]

file.each_line do |line|               #Loop through remaining lines
   values = line.chomp.split(",")      #["Gautham", "23", "Chennai"]

    row = {}                           #convert to hash
    headers.each_with_index do |header ,index|
            row[header] = values[index]
    end

    puts row
end
file.close