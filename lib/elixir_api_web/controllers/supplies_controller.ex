defmodule ElixirApiWeb.SuppliesController do
  use ElixirApiWeb, :controller

  alias ElixirApi.Supply
  alias ElixirApiWeb.FallbackController

  action_fallback FallbackController

  def create(conn, params) do
    with {:ok, %Supply{} = supply} <- ElixirApi.create_supply(params) do
      conn
      |> put_status(:created)
      |> render("create.json", supply: supply)
    end
  end

  def show(conn, %{"id"=>uuid}) do
    with {:ok, %Supply{} = supply} <- ElixirApi.get_supply(uuid) do
      conn
      |> put_status(:ok)
      |> render("show.json", supply: supply)
    end
  end
end
