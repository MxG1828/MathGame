require "./player"
require "./turn"

class Game
  def initialize
    i = 0
    player1 = Player.new("Player1")
    player2 = Player.new("Player2")
    while player1.life > 0 && player2.life > 0 && i < 100
      i += 1

      if (i % 2 == 1)
        Turn.new(player1)
      elsif (i % 2 == 0)
        Turn.new(player2)
      end
      puts "P1: #{player1.life}/3 vs P2: #{player2.life}/3"
      if player1.life > 0 && player2.life > 0
        puts "----- NEW TURN -----"
      end
    end
    if player1.life > 0
      winner = player1
    else
      winner = player2
    end
    puts "#{winner.name} wins with a score of #{winner.life}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
end
