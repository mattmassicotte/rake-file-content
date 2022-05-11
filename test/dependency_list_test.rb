require 'test_helper'

class DependencyListTest < Minitest::Test
  def test_serialize
    deps = RakeContentFile::DependencyList.new

    deps.add("a", "1")
    deps.add("b", "2")

    assert_equal "a: 1\nb: 2\n", deps.serialize
  end

  def test_sorts_on_serialize
    deps = RakeContentFile::DependencyList.new
    
    deps.add("b", "2")
    deps.add("a", "1")
    
    assert_equal "a: 1\nb: 2\n", deps.serialize
  end

  def test_deseralize
    data = "a: 1\nb: 2\n"

    deps = RakeContentFile::DependencyList.deserialize(data)

    assert_equal deps.list, [["a", "1"], ["b", "2"]]
  end

  def test_equality
    a = RakeContentFile::DependencyList.new
    b = RakeContentFile::DependencyList.new
    
    assert a == b

    a.add("a", "1")
    b.add("a", "1")

    assert a == b
  end
end