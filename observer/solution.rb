class Observer
  attr_reader :msg

  def notify(msg)
    @msg = msg
    puts "Notify with message: #{msg}"
  end
end

class Publisher
  attr_reader :observers

  def initialize
    @observers = []
  end

  def add_observer(observer)
    @observers << observer
  end

  def remove_observer(observer)
    @observers = @observers.delete_if { |o| o == observer }
  end

  def notify_observers(msg)
    @observers.each do |observer|
      observer.notify(msg)
    end
  end
end
