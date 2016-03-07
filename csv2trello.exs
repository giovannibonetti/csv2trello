# iex -S mix

import Codepagex

{:ok, content} = File.read "input.csv"

lines = to_string!(content, :iso_8859_1) |> String.split("\r")

IO.puts "Lines decoded from file:\n"
IO.puts lines

csv_output = CSV.decode(lines) |> Enum.take(1)
IO.puts "Result output from the CSV module:\n"
IO.puts csv_output