

#This short game is part of the THP Beginner Ruby Program exos. 
#Get to the top!
#Need to implement manuel dice throw.

############################################################################


#Generate Stairs




def staircase
    puts " "
    puts "Here is a staircase:"
    puts " "
    puts "You are at step 0." 
    puts " "
    puts "Throw a dice to move up or down the stairs."
    puts " "
    puts "If dice is 1, you go back 1 step."
    puts " "
    puts "If dice is 2, 3 or 4, you stay put."
    puts " "
    puts "If dice is 5 or 6, you go forward 1 step."
    puts " "
    puts "       **************************"
    puts " "
           
    i = 1
    str = " "
    str2 = "#"
    while i <= 10 
        print str * (10 - i) 
        puts str2 * i 
        i += 1
    end
end

def perform
    staircase
end

perform 


#Auto game

def launch_dice
    @dice_face = (rand(1 .. 6).to_i)
    puts "Dice value is #{@dice_face}"
    
    
end

def move
    launch_dice
    

    if @dice_face == 5 || @dice_face == 6
        @pos += 1
        puts "You go forward! You are now at step #{@pos}."
        #return @pos
    end
    if @dice_face == 2 || @dice_face == 3 || @dice_face == 4
        puts "You stay put. You are at step #{@pos}."
        #return @pos
    end
    if @dice_face == 1
        if @pos == 0
            @pos = 0
            puts "You stay put. You are at step #{@pos}."
        end
        if @pos > 1
            @pos = @pos - 1
            puts "You go back. You are now at step #{@pos}."
        end
        
        #return @pos
    end
    
    
end


def play 
    
    @pos = 0
    i = 0
    
    while @pos < 10
        
        puts "
        Type 't'to roll the dice."
        cmd = gets.chomp    
        if cmd == 't'
            puts " "
            move
            i += 1
        else
            puts "Wrong command!"

        end
    end
    if @pos == 10  
        puts " "
        puts "YES !! You got to the TOP after #{i} tosses of the dice !"
    end
        
end


play


