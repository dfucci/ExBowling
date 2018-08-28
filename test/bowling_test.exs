defmodule BowlingTest do
  use ExUnit.Case
  test "score single frame" do
    assert 5 == Bowling.score([[1,4]])
  end

  test "score several open frames" do
    assert 22 == Bowling.score([[3,4], [5,2], [6,2]])
  end

  test "score a spare" do
    assert 17 == Bowling.score([[5,5], [3,1]])
  end

  test "score a strike" do
    assert 20 == Bowling.score([[10,0], [2, 3]])
  end

  test "two scores in a row" do
    assert 42 == Bowling.score([[10,0], [10,0], [2, 3]])
  end

  test "spare and a strike" do
    assert 40 == Bowling.score([[4, 6], [10, 0], [1, 4]])
  end

  test "worst shot" do
    assert 0 == Bowling.score([[0,0], [0,0], [0,0]])
  end

  test "bonus strike" do
    assert 15 == Bowling.score([[10, 0, 5]])
  end

  test "perfect game" do
    assert 300 == Bowling.score([[10, 0], [10, 0],[10, 0],[10, 0],[10, 0],[10, 0],[10, 0],[10, 0],[10, 0],[10, 10, 10]])
  end
end