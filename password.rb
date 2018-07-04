def define_password
    puts "Choisissez un MDP"
    print ">"
    @user_password = gets.chomp
end


def pass_verif(define_password)
    puts "veuillez confirmer MDP"
    print ">"
    password = gets.chomp
    
    while password != @user_password 
        puts "veuillez confirmer MDP"
        print ">"
        password = gets.chomp
    end 
    puts "MDP validé"
end

def perform 
    pass_verif(define_password)
end

perform 


