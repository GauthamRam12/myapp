module Greetable 
    def greet(name)
            "Hello #{name} ,nice to meet you"  
    end  
end

class Teacher 
     include Greetable  
      
    end

class Student 
     include Greetable  
      
    end

t = Teacher.new
puts t.greet("Gautham")
s = Student.new
puts s.greet("Ram")

