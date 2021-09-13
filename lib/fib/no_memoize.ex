defmodule Fib.NoMemoize do
  @spec fib(integer()) :: integer()
  def fib(n) when n <= 1, do: n

  def fib(n), do: fib(n - 1) + fib(n - 2)
end
