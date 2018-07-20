require 'minitest/autorun'
require 'pry'
require_relative 'solution'

class DecoratorTest < Minitest::Test
  def test_encrypted_logger
    log = EncryptedLogger.new
    assert_output(/halo msg encrypted/) { log.log_msg('halo') }
  end
end
