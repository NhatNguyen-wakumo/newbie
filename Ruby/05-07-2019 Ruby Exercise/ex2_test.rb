require 'pry'
require 'minitest/autorun'
require './ex2'
class IsPrime < Minitest::Test

	def setup
		@N_prime_number = First_N_prime_number.new
	end

	def testcase
		assert_equal @N_prime_number.isPrime(10),2..11
	end
end