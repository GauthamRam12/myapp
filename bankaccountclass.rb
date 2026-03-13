class BankAccount
  attr_accessor :owner, :balance

  def initialize(owner, balance)
    @owner = owner
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
    puts "Deposited #{amount}. New balance: #{@balance}"
  end

  def withdraw(amount)
    if amount <= @balance
      @balance -= amount
      puts "Withdraw #{amount}. New balance: #{@balance}"
    else
      puts "Insufficient balance"
    end
  end

  def show_balance
    puts "#{owner}'s balance is #{@balance}"
  end
end

account = BankAccount.new("Gautham", 1000)

account.show_balance
account.deposit(500)
account.withdraw(300)
account.show_balance
