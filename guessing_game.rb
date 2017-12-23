puts "I have generated a random number for you to guess. What is your guess?"

#A random whole number is generated between 1-100 and set to a variable
#Gets user input from the command line
#User input is compared to variable
#If user input matches the random number variable, the player wins the game
#Otherwise the player is asked to guess again
#Subsequent guesses tell the player whether the random number variable is higher or lower than their guess
#The 'Cheat' input allows the player to cheat by displaying the random number

class Game

  RANDOM_NUMBER = rand(100)

  def play
    guess = gets.chomp
    if guess_valid?(guess.to_i)
      guess_check(guess.to_i)
    elsif guess == "Cheat"
      puts RANDOM_NUMBER
      play
    else
      puts "Enter a valid number between 1-100"
      play
    end
  end

  def guess_valid?(guess)
    guess.between?(1,100)
  end

  def guess_check(guess)
    if guess == RANDOM_NUMBER
      puts "You won!"
    elsif guess > RANDOM_NUMBER
      puts "No, my number is lower!"
      play
    else
      puts "No, my number is higher!"
      play
    end
  end

end

game = Game.new
game.play
