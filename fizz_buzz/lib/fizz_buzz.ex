#NOTE Usando o pattern matching
# defmodule FizzBuzz do
#   def build(file_name) do
#     {:ok, file} = File.read(file_name)
#      file
#   end
# end



#SECTION Controle de fluxo
#NOTE Case
# defmodule FizzBuzz do
#   def build(file_name) do
#       #NOTE Case
#       case File.read(file_name) do
#         {:ok, result} -> result
#         {:error, reason} -> reason
#       end
#   end


# NOTE pattern matching and functions
# defmodule FizzBuzz do
#   def build(file_name) do
#    file = File.read(file_name)
#    handle_file_read(file)
#   end

#   ## recebendo pattern matching na função
#   def handle_file_read({:ok, result}), do: result
#   def handle_file_read({:error, reason}), do: reason
# end



# # NOTE pattern matching and functions elixir flow
# defmodule FizzBuzz do
#   def build(file_name) do
#    file_name
#    |>File.read()
#    |>handle_file_read()
#   end

#   ## recebendo pattern matching na função
#   def handle_file_read({:ok, result}), do: result
#   def handle_file_read({:error, reason}), do: reason
# end

# # NOTE  get more stuff done
# defmodule FizzBuzz do
#   def build(file_name) do
#    file_name
#    |>File.read()
#    |>handle_file_read()
#   end

#   ## recebendo pattern matching na função
#   def handle_file_read({:ok, result}) do
#     result
#     |> String.split(",")
#     |> Enum.map(&String.to_integer/1)
#   end
#   def handle_file_read({:error, reason}), do: "Error reading this file #{reason}"
# end

# NOTE  get more stuff done
defmodule FizzBuzz do
  def build(file_name) do
   file_name
   |>File.read()
   |>handle_file_read()
  end

  ## reuse loop map
  defp handle_file_read({:ok, result}) do
    result =
      result
    |> String.split(",")
    |> Enum.map(&convert_and_evaluate_numbers/1)

    {:ok, result}
  end

  defp handle_file_read({:error, reason}), do: {:error, "Error reading this file #{reason}"}

  defp convert_and_evaluate_numbers(elem) do
    elem
    |> String.to_integer()
    |> evaluate_numbers()
  end

  #NOTE pattern matching is sequencial
  defp evaluate_numbers(number) when rem(number, 3) == 0 and rem(number,5) == 0, do: :fizzbuzz
  defp evaluate_numbers(number) when rem(number, 3) == 0, do: :fizz
  defp evaluate_numbers(number) when rem(number, 5) == 0, do: :buzz
  defp evaluate_numbers(number), do: number
end

  #!SECTION
