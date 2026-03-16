module Greetable 
    def greet
            puts "hello welcome"
    end
end

class Human
    include Greetable
end

class Dog 
    include Greetable
end

h = Human.new 
h.greet
d = Dog.new
d.greet 


