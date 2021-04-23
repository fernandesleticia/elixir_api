defmodule ElixirApi.Welcomer do
  def welcome(params) do
    age = params["age"]

    name =
      params["name"]
      |> String.trim()
      |> String.downcase()
  end
end
