defmodule ElixirApi.Supplies.Get do

  alias ElixirApi.{Repo, Supply}

  def call(uuid) do
    case Repo.get(Supply, uuid) do
      nil -> {:error, %{result: "supply not found", status: :not_found}}
      supply -> {:ok, supply}
    end
  end
end
