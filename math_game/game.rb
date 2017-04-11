class Game
  def initialize(p1, p2, n)
    @player1 = p1
    @player2 = p2
    @number = n
    @current_player = p1
  end

  def start
    while @player1.lives > 0 && @player2.lives > 0 do
      n1 = @number.get_number
      n2 = @number.get_number
      puts "#{@current_player.name} : what does #{n1} plus #{n2} equal ?"
      answer = gets.chomp.to_i

      if (answer > n1+n2)
        puts "Seriously? No!!"
        @current_player.reduce_life
        puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
        if @player1.lives >0 && @player2.lives > 0
          switch_player
          puts "------NEW TURN------"
        end

      elsif (answer < n1+n2)
        puts "OMG! No! No! No!"
        @current_player.reduce_life
        puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
        if @player1.lives >0 && @player2.lives > 0
          switch_player
          puts "------NEW TURN------"
        end

      else
        puts "Perfect!"
        switch_player
      end
    end

    if @player1.lives > 0
      puts "#{@player1.name} wins with the score of #{@player1.lives}/3 \n -------GAME OVER-------\nGood Bye!"
    else
      puts "#{@player2.name} wins with the score of #{@player2.lives}/3 \n -------GAME OVER-------\nGood Bye!"
    end

  end

  def switch_player
    @current_player.name == @player1.name ? @current_player = @player2 : @current_player = @player1
  end
end