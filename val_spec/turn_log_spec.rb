require 'minitest/autorun'
require 'minitest/rg'
require_relative('../turn_log')
#turn log is keeping a history of all the turns that have happened in the game. It has a modifer because when you land on 7 you are on a snake and go back 7, when you land on 2 you are on a ladder so go up 4.

#in the def setup there is also a hash for each turnlog and therefore you can call its key and values.

class TestTurnLog < Minitest::Test

  def setup
    @turn_log1 = TurnLog.new(player: "Valerie", roll: 7, modifier: -7)
    @turn_log2 = TurnLog.new(player: "Rick", roll:2, modifier:4)
    @turn_log3 = TurnLog.new(player: "Valerie", roll:1, modifier:0)
  end

  def test_has_player
    assert_equal("Valerie",@turn_log1.player)
  end

  def test_has_modifier
    assert_equal(-7,@turn_log1.modifier)
  end

  def test_has_roll
    assert_equal("Valerie",@turn_log1.player)
  end

  def test_has_snake_modifier_type
    assert_equal(:snake, @turn_log1.modifier_type)
  end

  def test_has_ladder_modifier_type
    assert_equal(:ladder, @turn_log2.modifier_type)
  end

  def has_space_modifier_type
    assert_equal(:space, @turn_log3.modifier_type)
  end
end