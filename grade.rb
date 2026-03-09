puts "Enter Your Test Score : "
score = gets.chomp.to_i


if score >= 90
    puts "Grade A+"
    elsif score >=80 && score <=90
    puts "Grade A"
    elsif score >=70 && score <=80
    puts "Grade B+"
    elsif score >=60 && score <=70
    puts "Grade B"
    elsif score >=50 && score <=60
    puts "Grade c+"
    elsif score >=40 && score <=50
    puts "Grade c"
    else 
    puts "Grade D"
   
        
end