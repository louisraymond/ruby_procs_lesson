require "minitest/autorun"
require_relative "../procs"

class DoubleTripleTest < Minitest::Test
  def test_double_is_a_proc
    assert_kind_of Proc, ProcChallenge.return_proc(:double), "Expected 'double' to be a Proc"
  end

  def test_triple_is_a_proc
    assert_kind_of Proc, ProcChallenge.return_proc(:triple), "Expected 'triple' to be a Proc"
  end

  def test_double_behavior
    assert_equal 4, ProcChallenge.return_proc(:double).call(2)
    assert_equal 10, ProcChallenge.return_proc(:double).call(5)
  end

  def test_triple_behavior
    assert_equal 6, ProcChallenge.return_proc(:triple).call(2)
    assert_equal 15, ProcChallenge.return_proc(:triple).call(5)
  end
end
