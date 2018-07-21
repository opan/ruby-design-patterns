require 'minitest/autorun'
require 'pry'
require_relative 'solution'

class ObserverTest < Minitest::Test
  def test_pub_sub_system
    obs_1 = Observer.new
    obs_2 = Observer.new
    pub = Publisher.new
    pub.add_observer(obs_1)
    pub.add_observer(obs_2)

    assert pub.observers.length == 2

    pub.remove_observer(obs_1)
    assert pub.observers.length == 1

    pub.add_observer(obs_1)
    pub.notify_observers('Hello, world')

    assert obs_1.msg == 'Hello, world'
    assert obs_2.msg == 'Hello, world'
  end
end
