defmodule Year2022.Day01 do
  @moduledoc """
  https://adventofcode.com/2022/day/1
  """

  # Input is the number of calories that each elf is carrying.
  #
  # Goal: Find the Elf carrying the most Calories.
  # Answer: How many total Calories is that Elf carrying?

  def part_1(input) do
	# split by empty line

    input
    |> String.split("\n\n", trim: true)
    |> Enum.map(&split_and_convert/1)
    |> Enum.map(&reduce_with_sum/1)
    |> Enum.max()
  end

  defp split_and_convert(str) do
    String.split(str, "\n", trim: true)
    |> Enum.map(&String.to_integer/1)
  end

  defp reduce_with_sum(list) do
    Enum.reduce(list, 0, fn x, acc -> x + acc end)
  end
end
