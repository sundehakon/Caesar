def caesar
    print "Enter word: "
    input = gets.chomp
    print "Enter increment: "
    increment = gets.chomp.to_i

    input.split("").each do |i|
        ascii = i.ord
        if ascii.between?(65, 90)  
            ascii += 6
            ascii -= 25 if ascii > 90
        elsif ascii.between?(97, 122) 
            ascii += 5
            ascii -= 26 if ascii > 122 
        end
        print ascii.chr
    end
    puts
end

caesar
