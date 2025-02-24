require "test_helper"
require_relative "../procs"

class DoubleTripleTest < Minitest::Test
  def test_double_is_a_proc
    double = ProcChallenge.return_proc(:double)
    assert double.is_a?(Proc), "Expected 'double' to be a Proc, but got #{double.class}"
    assert_equal 4, double.call(2), "Expected double(2) to return 4"
  end

  def test_triple_is_a_proc
    triple = ProcChallenge.return_proc(:triple)
    assert triple.is_a?(Proc), "Expected 'triple' to be a Proc, but got #{triple.class}"
    assert_equal 6, triple.call(2), "Expected triple(2) to return 6"
  end

  def test_double_behavior
    double = ProcChallenge.return_proc(:double)
    assert_equal 10, double.call(5), "double(5) should return 10"
  end

  def test_triple_behavior
    triple = ProcChallenge.return_proc(:triple)
    assert_equal 15, triple.call(5), "triple(5) should return 15"
  end

  def test_invalid_proc
    assert_raises(NoMethodError) { ProcChallenge.return_proc(:quadruple).call(5) }
  end
end
