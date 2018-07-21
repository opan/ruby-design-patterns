require 'minitest/autorun'
require 'pry'
require_relative 'solution'

class StateTest < Minitest::Test
  def test_door_operation_state
    door = DoorOperation.new
    assert door.state.class == DoorOpenState
    
    door.trigger(:close)
    assert door.state.class == DoorCloseState

    door.trigger(:close)
    assert door.state.class == DoorAlreadyClosedState
  end
end
