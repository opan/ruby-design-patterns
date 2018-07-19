class SimpleCounter
  attr_accessor :count

  def initialize
    @count ||= 0
  end

  def self.instance
    @@instance
  end

  def increase
    @count =+ add
  end


  private

  def add
    @count + 1
  end

  @@instance = SimpleCounter.new
  private_class_method :new
end
