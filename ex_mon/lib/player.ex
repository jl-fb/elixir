# defmodule ExMon.Player do
#   #NOTE -> Struct definition
#   defstruct [:life, :name, :move_rnd , :move_avg, :move_heal]
# end

# defmodule ExMon.Player do
#   #NOTE -> Required keys
#   @enforce_keys [:life, :name, :move_rnd , :move_avg, :move_heal]
#   defstruct [:life, :name, :move_rnd , :move_avg, :move_heal]
# end

# defmodule ExMon.Player do
#   #NOTE -> Build custom behaviors/construction
#   @enforce_keys [:life, :name, :move_rnd , :move_avg, :move_heal]
#   defstruct [:life, :name, :move_rnd , :move_avg, :move_heal]

#   def build(name, move_rnd, move_avg, move_heal)do
#      %ExMon.Player{
#        name: name,
#        move_rnd: move_rnd,
#        move_avg: move_avg,
#        move_heal: move_heal,
#        life: 100
#      }
#   end
# end

defmodule ExMon.Player do
  #NOTE -> Improvements

  # Create module variable
  @max_life 100
  @required_keys [:life, :move_avg, :move_heal, :move_rnd, :name]

  @enforce_keys @required_keys
  defstruct @required_keys

  def build(name, move_avg, move_heal, move_rnd)do
     %ExMon.Player{
       life: @max_life,
       move_avg: move_avg,
       move_heal: move_heal,
       move_rnd: move_rnd,
       name: name
     }
  end
end
