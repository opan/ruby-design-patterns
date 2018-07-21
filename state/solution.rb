class DoorOperation
  attr_reader :state
  def initialize
    @state = DoorOpenState.new
  end

  def trigger(state)
    @state = @state.next(state)
  end
end

class DoorOpenState
  def next(state)
    if state == :open
      DoorAlreadyOpenState.new
    elsif state == :close
      DoorCloseState.new
    end
  end
end

class DoorAlreadyOpenState
  def next(state)
    if state == :open
      DoorAlreadyOpenState.new
    elsif state == :close
      DoorCloseState.new
    end
  end
end

class DoorCloseState
  def next(state)
    if state == :open
      DoorOpenState.new
    elsif state == :close
      DoorAlreadyClosedState.new
    end
  end
end

class DoorAlreadyClosedState
  def next(state)
    if state == :open
      DoorOpenState.new
    elsif state == :close
      DoorAlreadyClosedState.new
    end
  end
end

