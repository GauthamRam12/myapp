class BankAccount
    def initialize
            @balance = 0
            @transaction = []
    end


def deposit
    print "Enter Amount : "
    amount = gets.chomp.to_i

    @balance += amount
    @transaction << "Deposited amount #{amount}"
    puts "Money Added"
end

def withdrawal
    print "Enter Amount : "
    amount = gets.chomp.to_i

    if amount > @balance
            puts "Insufficient Balance !"
    else
      @balance -= amount
      @transaction << "Withdrawal Amount #{amount}"
      puts "Money Withdrawn"
    end
  end


def balance
  puts "Current Balance : #{@balance}"
end

def  history
    puts "Transactions"
    @transaction.each { |t| puts t }
end

def save
  puts "DEBUG: save method called"
  File.open("bank.csv", "w") do |file|
    file.puts @balance
    file.puts @transaction
  end
  puts "Data Saved"
end

def run
    loop do
            puts "\n1.Deposit\n2.Withdrawal\n3.Balance\n4.History\n5.save\n6.Exit"
            print "Choose :"

            choice = gets.chomp.to_i

            case choice
            when 1 then deposit
            when 2 then withdrawal
            when 3 then balance
            when 4 then history
            when 5 then save
            when 6 then break
            else
              puts "Invalid Option"

            end
end
end
end





atm = BankAccount.new
atm.run
