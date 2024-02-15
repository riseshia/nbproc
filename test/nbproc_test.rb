require "minitest/autorun"
require "nbproc"

class NbprocTest < Minitest::Test
  def test_isolate_responds
    proc = Proc.new {}
    assert_respond_to proc, :isolate
  end

  def test_isolate_method_shareable
    proc = Proc.new { 1 }
    proc = proc.isolate

    assert_equal Ractor.shareable?(proc), true
  end

  def test_nbproc_method_shareable
    proc = nbproc { 1 }

    assert_equal Ractor.shareable?(proc), true
  end

  def test_nbproc_fail_to_create_since_outer_var_reference
    outer_var = 1
    assert_raises(ArgumentError) do
      nbproc { outer_var + 1 }
    end
  end
end
