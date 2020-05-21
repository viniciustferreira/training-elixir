defmodule MergeSortTest do
  use ExUnit.Case
  doctest MergeSort

  test "should return a sorted list" do
    assert MergeSort.execute([2,3,1,9,6,4,8],[],7) == [1,2,3,4,6,8,9]
  end
end
