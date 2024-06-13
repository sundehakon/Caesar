def caesar
input = nil

    while input.nil? || input.match?(/\d/) # Fetch word/password to encrypt
        print "Enter word (cannot contain integers): "
    input = gets.chomp

        if input.match?(/\d/)
            puts "Invalid input. The word cannot contain integers. Please try again."
        end
    end

    increment = nil

    while increment.nil? || increment < -5 || increment > 5 # Fetch prefered increment value
        print "Enter shift amount (-5 - 5): "
        increment = gets.chomp.to_i

        if increment < -5 || increment > 5
            puts "Invalid increment. It must be between -5 and 5. Please try again."
        end
    end

    input.split("").each do |i| # Convert string to char and then array for incrementation
        ascii = i.ord

        if ascii.between?(65, 90)  # Lowercase letters
            ascii += increment
            ascii -= increment + 21 if ascii > 90
        elsif ascii.between?(97, 122) # Uppercase letters
            ascii += increment
            ascii -= increment + 21 if ascii > 122 
        end

        print ascii.chr
    end
    puts
end

caesar
