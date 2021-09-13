defmodule Fib.Application do
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      Fib
    ]

    opts = [strategy: :one_for_one, name: Fib.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
