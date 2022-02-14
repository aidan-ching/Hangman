words = File.read("google-10000-english-no-swears.txt")
chosenWord = words.split("\n")[rand(10000)].split("")
playerSees = Array.new(chosenWord.length, "_")
guesses = 6

while guesses != 0
    print playerSees.join(" ")
    print "          Guesses remaining: #{guesses}   \n"
    puts "Please enter a guess:"
    guess = gets.chomp

    if chosenWord.include?(guess)
        for i in 0..playerSees.length
            if guess == chosenWord[i]
                playerSees[i] = guess
            end
        end
    else
        guesses -= 1
    end

    unless playerSees.include?("_")
        print playerSees.join("")
        print "\n"
        puts "Congrats! You win!"
        break
    end
end

if guesses == 0
    puts "The correct answer was: #{chosenWord.join("")}"
end
