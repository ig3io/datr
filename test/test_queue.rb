require_relative "test_helper"
require "test/unit"
require "datr"

class TestQueue < Test::Unit::TestCase

  def setup
    @q = Datr::Queue.new
  end

  def test_a_new_queue_is_alway_empty
    assert @q.empty?
  end

  def test_a_queue_is_not_empty_after_an_insert
    @q.insert 1
    assert_equal false, @q.empty?
  end

  def test_a_queue_is_empty_after_one_insert_and_one_remove
    @q.insert "hola"
    @q.remove
    assert @q.empty?
  end

  def test_remove_returns_the_first_inserted_element
    @q.insert 1
    @q.insert 2
    assert_equal 1, @q.remove
  end

  def test_remove_in_an_empty_queue_returns_nil
    assert_nil @q.remove
  end

  def test_a_new_queue_has_size_0
    assert_equal 0, @q.size
  end

  def test_insert_increments_the_size_by_1
    size = @q.size
    @q.insert "hola"
    assert_equal size + 1, @q.size
  end

  def test_insert_and_remove_multiple_elements
    (1..10).each do |i|
      @q.insert i
    end
    (1..10).each do |i|
      assert_equal i, @q.remove
    end
  end

end
