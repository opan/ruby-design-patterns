require 'minitest/autorun'
require 'pry'
require_relative 'solution'

class StrategyTest < Minitest::Test
  def test_formatter_using_html
    report = Report.new(HTMLFormatter.new)
    assert_output(/Monthly Report/) { report.output_report }

  end

  def test_formatter_using_plain_text
    report = Report.new(HTMLFormatter.new)
    report.formatter = PlainTextFormatter.new
    assert_output(/Things are going/) { report.output_report }
  end
end
