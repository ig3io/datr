require_relative "test_helper"
require "test/unit"
require "datr"

class TestStack < Test::Unit::TestCase

  def setup
    @s = Datr::Stack.new
  end

  def test_a_new_stack_is_alway_empty
    assert @s.empty?
  end

  def test_a_stack_is_not_empty_after_a_push
    @s.push(1)
    assert_equal false, @s.empty?
  end

  def test_a_stack_is_empty_after_one_push_and_one_pop
    @s.push("hola")
    @s.pop
    assert @s.empty?
  end

  def test_pop_returns_the_last_pushed_element
    @s.push(1)
    @s.push(2)
    assert_equal 2, @s.pop
  end

  def test_pop_in_an_empty_stack_returns_nil
    assert_nil @s.pop
  end


end
