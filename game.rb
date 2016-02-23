require_relative("turn_log")

class Game
  attr_reader :current_player, :winner, :log

  def initialize(players, board)
    @players = players
    @board = board
    @current_player = players[0]
    @winner = nil
    @log = []
  end

  ##winner starts at nil. as the starting position of players are at zero. im not too sure about this?

  #log all the turn log are being shoveled into an array. but why do we need a turn log? im not sure what the benefits are of having a log of all the moves made in the game.

  def number_of_players
    return @players.count
  end

  def update_current_player
    @current_player = @players.rotate![0]
  end

  def next_turn(spaces)
    return if(is_won?)

    @current_player.move(spaces)

    modifier = @board.state[@current_player.position]

    @current_player.move(modifier)

    log << TurnLog.new(player: @current_player, roll: spaces, modifier: modifier)

    update_current_player
  end

  def is_won?
    for player in @players
      @winner = player if player.position == @board.win_tile
    end
    return @winner.nil? ? false : true
  end

end


##is_won? the player who wins is due to their position being equal to the board.win-tile. 

## retrun @winner.nil? false : true. I dont really understand this. is it because  it returns when the if hasnt been fulfilled so the winner.nil would be true in this case. also the ':' is this an or? it just a personal choice instead of '|'?