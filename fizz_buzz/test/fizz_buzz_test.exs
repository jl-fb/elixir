defmodule FizzBuzzTest do
  use ExUnit.Case

  # pattern { describe 'public_function_name/number_of_parameters'} do
  # body of function
  #  end
  describe "build/1" do
    test "when valid file is provided, returns converted list" do
      expected_response =
        {:ok, [1, 2, :fizz, 4, :buzz, :fizz, 7, 8, :fizz, :buzz, :fizzbuzz, :buzz]}

      assert FizzBuzz.build("numbers.txt") == expected_response
    end

    test "when invalid file is provided, returns an error " do
      expected_response = {:error, "Error reading this file enoent"}
      assert FizzBuzz.build("invalid.txt") == expected_response
    end
  end
end
