

def pyramid_gen(etages)
    i = 1
    str = " "
    str2 = "#"
    while i <= etages
        print str * (etages - i) 
        print str2 * i
        print str2 * (i - 1)
        puts str       #or str * whatever
        i += 1
    end
end 

pyramid_gen(25)
