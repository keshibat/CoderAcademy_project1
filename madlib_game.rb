#Fill in Blank Quiz for Coder Academy Project1

# requiring gems color effects.
require 'colorize'

# word iteration method takes three argument quiz, word, and color
def word_iteration(quiz, word, color)
  #it takes the arugemnt(word) from the quiz then checkes the see if it's ture or fale
  #then if true, iterates through quiz with what word we passed in, then changes color of that word
  #if fale return quiz
  quiz.include?(word) ? quiz.gsub!(word, word.colorize(color)) : quiz
end

# gretting message
def greeting
  "Welcome to the Seinfeld fill in blank game!\nPress enter to play!"
end

# instruction for quiz
def instructions
  puts "How to play: ".upcase.green + "
  Try to guess the missing words in the script!
  You get a total of 3 chances to complete the game!
  You get 5 points for every correct word!
  Your points gets times by the number of chances left!"
  puts "press " + "enter ".green + "to play or " + "q ".red + "to quit game"
  user_input = gets.chomp.strip.downcase
    if user_input == "q"
      puts "See you later!"
      exit
    end
end



# script for this quiz
def quiz
"\nJerry: I don't understand, I made a reservation, do you have my reservation? \n
Agent: Yes, we do, unfortunately we ran out of cars.\n
Jerry: But the " + "___1___ ".yellow + "keeps the car here. That's why you have the reservation.\n
Agent: I know why we have reservations. \n
Jerry: I don't think you do. If you did, I'd have a car. See, you know how to " + "___2___ ".yellow + "the reservation,\n
       you just dont know how to " + "___3___ ".yellow + "the reservation, and that's really the most important part of the reservation...\n
       The " + "___4___".yellow + ".Anybody can just take them."
end

#greeting and user input to either play or look at instructions
def guideline()
  puts greeting.magenta + " or i for instructions!".magenta
  user_input = gets.chomp.strip.downcase
  if user_input == "i"
     puts instructions
     puts "            good luck!".upcase.green
     puts "\nWelcome to Seinfeld Quiz!!"
     sleep 3
     puts word_iteration(quiz, "Jerry:", :blue)
  else
    puts "            good luck!".upcase.green
    puts "\nWelcome to Seinfeld Quiz!!"
    sleep 3
    puts word_iteration(quiz, "Jerry:", :blue)
  end
end
guideline()



def madlib_game()
  puts "\nWelcome to Seinfeld Quiz!!"
  #Array:lists of replacement word to be passed in to the madlib_game method
  blanks  = ["___1___", "___2___" , "___3___", "___4___"]
  #Array: lists of answers to be matched with variable called blanks
  answer1 = ["reservation", "take", "hold", "holding"]
  #Limit maximum the user attempt as 3 for each blanks
  attempts = 3
  player_blank = 0
  #Starts with 0 loop through unitl the end of Array of blanks
  while player_blank < blanks.length
      #pirnt which blank question  reffering to
      puts "\nWhat is answer to" "\n"+ blanks[player_blank] + "?" "\n"
      #Getting user input for quize answers
      player_answer = gets.chomp
  # if user's input mathces answers print "You're correct! Keep going!!"
  if player_answer == answer1[player_blank]
    puts "You're correct! Keep going!!"
    # if player got correct answer, increment player_blank so that player can go next question
    player_blank += 1
    # if player reached the end of blanks of question in this case "___4___"
    # and got correct answer, eixt from terminal
    if player_blank == blanks.length
      puts "Congrats! You're Seinfeld master"
      exit
    end
    #if player got wrong answer decrement of number of attempts


  else attempts -= 1
    puts "Wrong answer. Try again"
    #if player reached maximum attempts exit from the game
    if attempts == 0
      puts "Sorry, max number of attempts reached. Program closed......"
      exit
    end
  end
  end
end

madlib_game()