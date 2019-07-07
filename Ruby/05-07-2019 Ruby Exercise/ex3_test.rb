require 'pry'
require 'minitest/autorun'
require './ex3'

class palindrome < Minitest::Test
  def setup
    @palindrome_number = Palindrome.new
  end

  def test_check_padlindrome
    assert_equal @palindrome_number.palindrome(131),nil
    assert_equal @palindrome_number.palindrome(908),nil
  end
end