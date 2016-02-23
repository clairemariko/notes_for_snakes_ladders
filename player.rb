class Player
  attr_reader :name, :position

  def initialize(name, max_movement)
    @name = name
    @position = 0
    @max_movement = max_movement
  end

  def move(spaces)
    if (@position + spaces > @max_movement)
      @position = @max_movement
    else
      @position += spaces
    end
  end
end


#max-movement is a feture of the class Player. therefore if the current position of the player is on a 'winning tile' then player has won, the game is over is is the maximum amount of space the player can move to win.