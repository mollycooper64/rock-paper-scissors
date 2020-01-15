
wants_to_play = true
choices = ["rock","paper","scissors"]
computer_move = choices[rand(0..2)]

def welcome_sequence
  puts "Hello"
  puts "Want to play a game? (Yes or No?)"
  answer = gets.chomp.downcase
  if answer == "no"
    puts "No worries!"
    return false
  elsif answer == "yes"
    puts "Okay let's play!"
    return true
  else 
    puts "Sorry I don't understand."
    return false
  end
end

def make_moves
  puts "1" 
  sleep(1)
  puts "2"
  sleep(1)
  puts "3"
  sleep(1)
  puts "GO!"
  user_move = gets.chomp.downcase
  return user_move
end

def determine_winner(player1,player2)
  if player1 == "rock" 
    return player2 == "paper" ? player2 : player1
  elsif player1 == "paper" 
    return player2 == "scissors" ? player1 : player2
  elsif player1 == "scissors"
    return player2 == "paper" ? player1 : player2
  end
  end

def final_answer(computer_move,user_move)
  draw = computer_move == user_move
    if !draw
      winning_move = determine_winner(computer_move,user_move) 
      if computer_move == winning_move
        puts "You lose!"
      elsif user_move == winning_move
        puts "You win!"
      end
    else puts "It's a draw!"
    end       
end           

while wants_to_play
 wants_to_play = welcome_sequence
   break if wants_to_play == false
  user_move = make_moves
  puts "Computer played #{computer_move}"
  final_answer(computer_move,user_move)
end

