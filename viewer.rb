class Viewer

  def replay(log)
    for item in log
      puts "#{item.player.name} rolled #{item.roll}"
      if(item.modifier != 0)
        puts "#{item.player.name} hit a #{item.modifier_type}! Moves #{item.modifier}"
      end
    end
    puts "The winner is #{item.player.name}"
  end
  
end

##im assuming this is to do with the interaction with the user. and due to the log keeping tack of the players movements it will display that the player has rolled 4 . also it will show if the player has landed on a modifer (snake/ladder) and how the move is been modified, either going up spaces or down spaces.