require 'minitest/autorun'
require 'pry'
require_relative 'solution'

class CommandTest < Minitest::Test
  def test_command_composite
    command = CompositeCommand.new
    command.add_command(CreateFile.new('sample.txt', 'Hello'))
    command.add_command(PrintFile.new('sample.txt'))
    command.add_command(DeleteFile.new('sample.txt'))
    assert_output(/Hello/) { command.execute }
  end
end
