defmodule ExMon.Game do
  use Agent
  def start(computer, player) do
    initial_value = %{computer: computer, player: player, turn: :player, status: :started}
    # Fix de initial_value into this Agent
    Agent.start_link(fn -> initial_value end, name: __MODULE__)
  end

  def info do
    Agent.get(__MODULE__, & &1)
  end

  def player, do: Map.get(info(), :player)
end
