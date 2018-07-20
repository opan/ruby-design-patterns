require 'minitest/autorun'
require 'pry'
require_relative 'solution'

class BridgeTest < Minitest::Test
  def test_print_to_console
    printer = ConsolePrinter.new
    log = Logger.new(printer)
    assert_output(/This is log/) { log.log_msg('This is log') }
  end

  def test_print_to_file
    printer = FilePrinter.new
    log = Logger.new(printer)
    log.log_msg('This is log')
    assert File.exist?('file_printer.txt') == true
  end
end
