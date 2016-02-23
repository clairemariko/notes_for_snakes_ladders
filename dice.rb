class Dice

  def initialize
    @rolls = (1..4).to_a
  end

  def roll
    return @rolls.sample
  end
  
end

##note sure about dice as we had fake dice in class example. 
##but i can see it has a range of 1,2,3,4 which is turned into an array [1,2,3,4]
##.sample= takes a random index from the array to be the value of the players throw. 