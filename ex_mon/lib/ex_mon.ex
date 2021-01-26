# defmodule ExMon do
#   def create_player(name, move_avg, move_heal, move_rnd) do
#     ExMon.Player.build(name, move_avg, move_heal, move_rnd)
#   end
# end

# NOTE -> Do not repeat the namespace, just 'alias' it
defmodule ExMon do
  alias ExMon.Player
  #NOTE the las name of alias is usued to refer to that module. Or 'alias ExMon.Player, as: NAME_HERE

  def create_player(name, move_avg, move_heal, move_rnd) do
    Player.build(name, move_avg, move_heal, move_rnd)
  end
end
