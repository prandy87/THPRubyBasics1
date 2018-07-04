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

def login(define_password)
    puts "veuillez entrer votre MDP"
    print ">"
    password = gets.chomp
    
    while password != @user_password 
        puts "MDP incorrect"
        print ">"
        password = gets.chomp
    end 
    puts "Vous etes connecte"
end

def perform 
    
    login(pass_verif(define_password))
end

perform