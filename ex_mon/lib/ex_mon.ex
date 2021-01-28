# defmodule ExMon do
#   def create_player(name, move_avg, move_heal, move_rnd) do
#     ExMon.Player.build(name, move_avg, move_heal, move_rnd)
#   end
# end

# NOTE -> Do not repeat the namespace, just 'alias' it
defmodule ExMon do

  #NOTE the las name of alias is usued to refer to that module. Or 'alias ExMon.Player, as: NAME_HERE
  alias ExMon.{Game, Player}

  ## NOTE module variable
  @computer_player_name "Robotinik"

  def create_player(name, move_avg, move_heal, move_rnd) do
    Player.build(name, move_avg, move_heal, move_rnd)
  end
  # def start_game(player) do
  #   computer = create_player("Robotinik", :punch, :kick, :heal)
  #   Game.start(computer, player)
  # end
  def start_game(player) do
    @computer_player_name
    |> create_player(:punch, :kick, :heal)
    |> Game.start(player)
  end
end
