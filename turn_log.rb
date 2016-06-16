class TurnLog

  attr_reader :player, :roll, :modifier

  def initialize(params)
    @player = params[:player]
    @roll = params[:roll]
    @modifier = params[:modifier]
  end

  def modifier_type
    result = :space

    if @modifier > 0
      result = :ladder
    elsif @modifier < 0 
    result = :snake
    end

    return result
  end
end


#if this is true, do this , otherwise do this. so a ladder is 2 which is greater than 0 and snake is -7 so less is 0.

#modifier = for example you have a board 3 by 3. on 2 of the squares you have a snake and a ladder. landing on this square 'modifies' your result. i.e if you roll 2 then it will modifiy to 6 (added 4 as modifire:4)


#params = you are calling in the hash from the log_spec file. for example turn_log1 = (player : "Valerie") a key and a value. so in the first function, @player = params [:player] is calling the value of the key :player.