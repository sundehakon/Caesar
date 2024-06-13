print "Enter word: "
input = gets.chomp

input.split("").each do |i|
    puts i.succ
end