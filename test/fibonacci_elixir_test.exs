defmodule FibonacciElixirTest do
  use ExUnit.Case

  test "finds the 0th fibonacci" do
    assert FibonacciElixir.fibonacci(0) == 0
  end

  test "finds the 1st fibonacci" do
    assert FibonacciElixir.fibonacci(1) == 1
  end

  test "finds the 2nd fibonacci" do
    assert FibonacciElixir.fibonacci(2) == 1
  end

  @fib_reference [
    {0, 0},
    {1, 1},
    {2, 1},
    {3, 2},
    {4, 3},
    {5, 5},
    {6, 8},
    {7, 13},
    {8, 21}
  ]

  test "finds first 8 fibs" do
    Enum.each @fib_reference, fn({spot, fib}) -> assert FibonacciElixir.fibonacci(spot) == fib end
  end

end
