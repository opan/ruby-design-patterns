class DoorState
  def open
  end
  
  def close
  end
end

class DoorOpenState
  def open
    puts 'The door is open. Do not open again'
    self.class.new
  end
  
  def close
    puts 'The door is closed'
    DoorCloseState.new
  end
end

class DoorCloseState
  def open
    puts 'The door is opened'
    DoorOpenState.new
  end
  
  def close
    puts 'The door is closed. Do not close again'
    self.class.new
  end
end

class DoorContext
  attr_reader :state

  def initialize
    @state = DoorOpenState.new
  end
  
  def open
    @state = @state.open
  end
  
  def close
    @state = @state.close
  end
end
