class SimpleCounter
  attr_accessor :count

  def initialize
    @count ||= 0
  end

  def increase
    @count =+ add
  end

  private

  def add
    @count + 1
  end
end
