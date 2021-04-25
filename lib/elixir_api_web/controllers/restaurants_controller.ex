defmodule ElixirApiWeb.RestaurantsController do
  use ElixirApiWeb, :controller

  alias ElixirApi.Restaurant
  alias ElixirApiWeb.FallbackController

  action_fallback FallbackController

  def create(conn, params) do
    with {:ok, %Restaurant{} = restaurant} <- ElixirApi.create_restaurant(params) do
      conn
      |> put_status(:created)
      |> render("create.json", restaurant: restaurant)
    end
  end
end
