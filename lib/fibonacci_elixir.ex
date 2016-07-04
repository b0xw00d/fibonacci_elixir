defmodule FibonacciElixir do

  def fibonacci(number) when number <= 1, do: number

  def fibonacci(number), do: fibonacci(number - 1) + fibonacci(number - 2)

end
