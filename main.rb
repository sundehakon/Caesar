def caesar
encrypted_string = "" # Initialize encrypted_string outside the loop
loop do
    system("clear") || system("cls")  # Clear the screen
    puts "\nType 'view' to see encrypted string"
    puts "Type 'see' to see decrypted string"
    puts "Type 'add' to add new string"
    puts "Type 'exit' to exit"
    puts 
    
    menu_input = gets.chomp

    if menu_input == "add"
    input = nil

    while input.nil? || input.match?(/\d/) # Fetch word/password to encrypt
        system("clear") || system("cls")  # Clear the screen
        print "Enter word (cannot contain integers): "
        input = gets.chomp

        if input.match?(/\d/)
        puts "Invalid input. The word cannot contain integers. Please try again."
        end
    end

    increment = nil

    while increment.nil? || increment < -5 || increment > 5 # Fetch preferred increment value
        print "Enter shift amount (-5 - 5): "
        increment = gets.chomp.to_i

        if increment < -5 || increment > 5
        puts "Invalid increment. It must be between -5 and 5. Please try again."
        end
    end

    encrypted_string = "" # Initialize as an empty string

    input.split("").each do |i| # Convert string to char and then array for incrementation
        ascii = i.ord

        if ascii.between?(65, 90)  # Lowercase letters
        ascii += increment
        ascii -= increment + 21 if ascii > 90
        elsif ascii.between?(97, 122) # Uppercase letters
        ascii += increment
        ascii -= increment + 21 if ascii > 122 
        end

        encrypted_string += ascii.chr
    end

    puts "Your string is encrypted!"

    print "Go to menu? (y/n): "
    retry_input = gets.chomp
    if retry_input == "y"
        next
    elsif retry_input == "n"
        break
    else
        puts "Invalid input. Please try again."
    end
    elsif menu_input == "view"
    if encrypted_string.empty?  # Check if encrypted_string is empty
        puts "No encrypted string available. Please add a string first."
        print "Go to menu? (y/n): "
        retry_input = gets.chomp
        if retry_input == "y"
            next
        elsif retry_input == "n"
            break
        else
            puts "Invalid input. Please try again."
        end
    else
        puts encrypted_string

        print "Go to menu? (y/n): "
        retry_input = gets.chomp
        if retry_input == "y"
            next
        elsif retry_input == "n"
            break
        else
            puts "Invalid input. Please try again."
        end
    end
    elsif menu_input == "see"

    elsif menu_input == "exit"
    break
    else
    puts "Invalid input. Please try again."
    end
end
end

caesar
  