defmodule ListFilter do
  import Integer

  def call(list) do
    list
    |> Enum.filter(fn str -> String.match?(str, ~r/[0-9]+/) end)
    |> Enum.map(fn value -> parse_value(value) end)
    |> Enum.count(&is_odd/1)
  end

  defp parse_value(line) do
    line
    |> String.to_integer()
  end
end
