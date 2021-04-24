defmodule ElixirApi.Welcomer do
  def welcome(%{"name" => name, "age" => age}) do
    age = String.to_integer(age)

    name
      |> String.trim()
      |> String.downcase()
      |> evaluate(age)
  end

  defp evaluate("let", 25) do
    {:ok, "Hello again"}
  end

  defp evaluate(name, age) when age >= 20 do
    {:ok, "Welcome #{name}"}
  end

  defp evaluate(name, _age) do
    {:error, "You shall not pass #{name}"}
  end
end
