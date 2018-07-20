require 'minitest/autorun'
require 'pry'
require_relative 'solution'

class AdapterTest < Minitest::Test
  def test_print_with_modern_printer
    legacy = LegacyPrinter.new
    modern = ModernPrinter.new(legacy)
    assert_output(/Magic\nOld Print/) { modern.print_with_magic }
  end
end

