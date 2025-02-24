require "minitest/autorun"
require_relative "../procs_and_methods"

class ProcChallengeTest < Minitest::Test
  def test_double_is_a_proc
    assert_kind_of Proc, ProcsAndMethods.return_proc(:double), "Expected 'double' to be a Proc"
  end

  def test_triple_is_a_proc
    assert_kind_of Proc, ProcsAndMethods.return_proc(:triple), "Expected 'triple' to be a Proc"
  end

  def test_square_is_a_proc
    assert_kind_of Proc, ProcsAndMethods.return_proc(:square), "Expected 'square' to be a Proc"
  end

  def test_cube_is_a_proc
    assert_kind_of Proc, ProcsAndMethods.return_proc(:cube), "Expected 'cube' to be a Proc"
  end

  def test_apply_proc_to_evens
    double = ProcsAndMethods.return_proc(:double)
    assert_equal [1, 4, 3, 8, 5, 12], ProcsAndMethods.apply_proc_to_evens(double, [1, 2, 3, 4, 5, 6])
    
    square = ProcsAndMethods.return_proc(:square)
    assert_equal [4, 3, 16, 5], ProcsAndMethods.apply_proc_to_evens(square, [2, 3, 4, 5])
  end

  def test_transform_range
    square = ProcsAndMethods.return_proc(:square)
    assert_equal [1, 4, 9, 16, 25], ProcsAndMethods.transform_range(square, 1, 5)

    triple = ProcsAndMethods.return_proc(:triple)
    assert_equal [6, 9, 12, 15, 18], ProcsAndMethods.transform_range(triple, 2, 6)
  end

  def test_chain_procs
    double = ProcsAndMethods.return_proc(:double)
    triple = ProcsAndMethods.return_proc(:triple)
    assert_equal 30, ProcsAndMethods.chain_procs(double, triple, 5)

    square = ProcsAndMethods.return_proc(:square)
    cube = ProcsAndMethods.return_proc(:cube)
    assert_equal 64, ProcsAndMethods.chain_procs(square, cube, 2)
  end

  def test_filter_odds
    square = ProcsAndMethods.return_proc(:square)
    assert_equal [2, 4, 6], ProcsAndMethods.filter_odds(square, [1, 2, 3, 4, 5, 6])

    triple = ProcsAndMethods.return_proc(:triple)
    assert_equal [2, 4], ProcsAndMethods.filter_odds(triple, [1, 2, 3, 4, 5])
  end
end
