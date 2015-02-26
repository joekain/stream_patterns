defmodule RepeatedlyTakeTest do
  use ExUnit.Case
  
  @n 5
  
  def test_func do
    22
  end
  
  def expected do
    Stream.repeatedly(&test_func/0) |> Stream.take(@n) |> Enum.to_list
  end
  
  test "take repeatedly shold match range map" do
    assert Enum.map(1..@n, fn (_) -> test_func end) == expected
  end
  
  test "take repeatedly should match comprehension" do
    for _ <- 1..@n, do: test_func == expected
  end
end
