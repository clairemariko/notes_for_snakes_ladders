require_relative 'game'
require_relative 'player'
require_relative 'board'
require_relative 'dice'
require_relative 'viewer'

class SnakeAndLadders

  def initialize(dice)
    @dice = dice

    positions = {
      2 => 4,
      7 => -7,
    }
    board = Board.new(9, positions)

    player1 = Player.new("Val",board.size)
    player2 = Player.new("Rick",board.size)

    players = [player1,player2]
    @game = Game.new(players,board)
  end

  def simulate(viewer)
    while(!@game.is_won?) 
      @game.next_turn(@dice.roll)
    end

    #while the game is in play?

    viewer.replay(@game.log)
  end

end

game = SnakeAndLadders.new(Dice.new)
game.simulate(Viewer.new)



##I am not sure about this overall. is the Viewer.new defining how the game will interact with the user? therefore runs it in the terminal. 