defmodule InsertionSortTest do
  use ExUnit.Case
  doctest InsertionSort

  test "should return a sorted list" do
    assert InsertionSort.execute([2,3,1],[]) == [1,2,3]
  end
end
