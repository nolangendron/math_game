require './player'
require './question'
  

    Player_one = Player.new("Player One")
    Player_two = Player.new("Player Two")

    puts "===== New Game ====="

    def player_turn(current_player)
      puts "#{current_player.name}: What does #{Questions.number_one} plus #{Questions.number_two} equals?"
      player_answer = gets.chomp
      if Questions.question_answer(player_answer)
        puts "Your are correct!"
      else puts "You are wrong!"
        current_player.incorrect_answer
      end
      puts "Current Score:\n#{Player_one.name}: #{Player_one.lives}/3\n#{Player_two.name}: #{Player_two.lives}/3"
    end

    loop do
      if Player_one.game_over
      puts "player two wins"
      break
      else player_turn(Player_one) 
      end

      if Player_two.game_over
      puts "player one wins" 
      break
      else player_turn(Player_two)
      end
      puts "===== New Round ====="
    end

    puts "===== Game Over ====="
