require 'minitest/autorun'
require 'pry'
require_relative 'solution'

class TemplateTest < Minitest::Test
  def test_commit_user_repository
    repo = UserRepository.new
    assert_output(/Before Commit\nCommitting Repository\nAfter Commit/) { repo.commit }
  end
end
