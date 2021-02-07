# defmodule ExMon do
#   def create_player(name, move_avg, move_heal, move_rnd) do
#     ExMon.Player.build(name, move_avg, move_heal, move_rnd)
#   end
# end

# NOTE -> Do not repeat the namespace, just 'alias' it
defmodule ExMon do

  #NOTE the name of alias is usued to refer to that module. Or 'alias ExMon.Player, as: NAME_HERE
  alias ExMon.{Game, Player}
  alias ExMon.Game.{Actions, Status}

  ## module variable
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
    Status.print_round_message(Game.info())
  end

  ## function to the player choose  the move
  def make_move(move) do
    # Use the Actions module to handle actions of the game
    move
    |> Actions.fetch_move()
    |> do_move()
  end

  defp do_move({:error, move}), do: Status.print_wrong_move_message(move)

  defp do_move({:ok, move}) do
    case move do
      :move_heal -> Actions.heal()
      move -> Actions.attack(move)
    end
    Status.print_round_message(Game.info())
  end

end
