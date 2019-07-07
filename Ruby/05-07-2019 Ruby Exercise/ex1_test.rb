require 'pry'
require 'minitest/autorun'
require './ex1'
class TestCase < Minitest::Test
	def setup
		@prime_number = Prime.new
	end

	def testcase
		assert_equal @prime_number.prime(1),false
		assert_equal @prime_number.prime(2),2..1
	end
end