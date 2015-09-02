require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods_quiz'

class MethodsQuizTest < MiniTest::Test
	def setup
		@m = Class.new do
     include MethodsQuiz
   	end.new
	end

	def test_has_teen
		assert_equal true, @m.has_teen(13, 15, 19)
		assert_equal true, @m.has_teen(14, 25, 20)
		assert_equal true, @m.has_teen(16, 18, 21)

		assert_equal false, @m.has_teen(21, 22, 34)
		assert_equal false, @m.has_teen(5, 6, 9)
	end

	def test_icy_hot
		assert_equal true, @m.icy_hot(-10, 101)
		assert_equal false, @m.icy_hot(103, -15)

		assert_equal false, @m.icy_hot(103, 102)
		assert_equal false, @m.icy_hot(102, 107)

		assert_equal false, @m.icy_hot(-20, -19)

	end


	def test_closer_to
		assert_equal 20, @m.closer_to(0, 20, 23)		
		assert_equal 30, @m.closer_to(30, 47, 30)		
		assert_equal 40, @m.closer_to(32, 40, 54)		
	end
end
