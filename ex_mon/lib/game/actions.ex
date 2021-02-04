defmodule ExMon.Game.Actions do
  alias ExMon.Game
  ## module to handle actions of the game
  def fetch_move(move) do
   Game.player()
   |> Map.get(:moves)
   |> find_move(move)
  end

  def find_move(moves, move) do
    Enum.find_value(moves, {:error, move}, fn {key, value} ->
      if value == move, do: {:ok, key}
    end)
  end
end
