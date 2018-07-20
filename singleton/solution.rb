class SimpleCounter
  attr_accessor :count

  def initialize
    @count ||= 0
  end

  def add
    @count = @count + 1
  end

  def self.instance
    @@instance
  end

  @@instance = SimpleCounter.new
  private_class_method :new
end
