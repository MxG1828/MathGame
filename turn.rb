class Turn
  def initialize (player)
    num1 = rand(1..20)
    num2 = rand(1..20)
    puts "#{player.name} : what does #{num1} plus #{num2} equal?"
    ans = gets.chomp
    if ans.to_i == num1 + num2
      puts "YES! You are correct."
    else
      player.lose_life
      puts "#{player.name} : Seriously? No!"
    end

  end
end
