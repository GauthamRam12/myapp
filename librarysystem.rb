class Book
  attr_accessor :title, :author, :available

  def initialize(title, author)
    @title = title
    @author = author
    @available = true
  end

  def to_s
    status = @available ? "Available" : "Borrowed"
    "#{@title} - #{@author} (#{status})"
  end
end

library = []

loop do
  puts "\nLibrary Menu"
  puts "1 Add Book"
  puts "2 Show Books"
  puts "3 Borrow Book"
  puts "4 Exit"
  print "Choose option: "

  choice = gets.chomp.to_i

  case choice

  when 1
    print "Enter title: "
    title = gets.chomp

    print "Enter author: "
    author = gets.chomp

    library << Book.new(title, author)

  when 2
    library.each_with_index do |book, i|
      puts "#{i + 1}. #{book}"
    end

  when 3
    print "Enter book number: "
    num = gets.chomp.to_i

    if library[num - 1].available
      library[num - 1].available = false
      puts "Book borrowed"
    else
      puts "Already borrowed"
    end

  when 4
    puts "Exit"
    break

  else
    puts "Invalid option"
  end
end