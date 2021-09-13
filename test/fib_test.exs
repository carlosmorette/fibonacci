defmodule FibTest do
  use ExUnit.Case

  test "Given the number 10, return 55" do
    assert 55 = Fib.fib(10)
  end

  test "Given the number 20, return 6765" do
    assert 6765 = Fib.fib(20)
  end
end
