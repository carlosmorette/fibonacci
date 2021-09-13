defmodule Fib do
  use Agent

  def start_link(_) do
    Agent.start_link(fn -> %{} end, name: __MODULE__)
  end

  def get(n) do
    Agent.get(__MODULE__, &Map.get(&1, n))
  end

  def save_in_cache(n, value) do
    Agent.update(__MODULE__, &Map.merge(&1, %{n => value}))
  end

  @spec fib(integer()) :: integer()
  def fib(n) when n <= 1, do: n

  def fib(n) do
    case get(n) do
      nil ->
        value = fib(n - 1) + fib(n - 2)
        save_in_cache(n, value)

        value

      cached ->
        cached
    end
  end
end
