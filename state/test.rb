require 'minitest/autorun'
require 'pry'
require_relative 'solution'

class StateTest < Minitest::Test
  def test_door_operation_state
    door = DoorContext.new

    assert_output(/The door is open. Do not open again/) { door.open }
    assert_output(/The door is closed/) { door.close }
    assert_output(/The door is opened/) { door.open }
    
  end
end
