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

end
