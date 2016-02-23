class Board
  attr_reader :state

  def initialize(size, positions)
    @state = Array.new(size,0)
    
    for key in positions.keys
      @state[key] = positions[key]
    end
  end

  def win_tile
    @state.size - 1;
  end

end

#@state is the state of your board so in this case the board is an array. [ 0,0,0,0,0,] 0 is the default value of the array. 

#the win tile size is -1 as the index of an array starts at 0.