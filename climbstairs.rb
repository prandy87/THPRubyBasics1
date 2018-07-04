#gen Stairs




def staircase
    puts "Here is a staircase: "
    puts "You are at step 0. " 
    puts "If dice is 1, you go back 1 step."
    puts "If dice is 2, 3 or 4, you stay put."
    puts "If dice is 5 or 6, you go forward 1 step."
           
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




def launch_dice
    @dice_face = (rand(1 .. 6).to_i)
    puts "Dice value is #{@dice_face}"
    
    
end

def move
    launch_dice
    
    if @dice_face == 5 || @dice_face == 6
        @pos += 1
        puts "You go forward! You are at rank #{@pos}."
        #return @pos
    elsif @dice_face == 2 || @dice_face == 3 || @dice_face == 4 ||
        @pos == @pos
        puts "You stay put. You are at rank #{@pos}."
        #return @pos
    elsif @dice_face == 1 
        @pos -= 1
        puts "You go back. You are at rank #{@pos}."
        #return @pos
    end
    
end

def win
    @pos = 0
    i = 0
    while @pos < 10
        move
        i += 1
    end
    puts "YES !! You are at the TOP in #{i} iterations of throwing dice !"
end

win