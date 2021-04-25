defmodule ElixirApiWeb.RestaurantsController do
  use ElixirApiWeb, :controller

  alias ElixirApi.Restaurant
  alias ElixirApi.Restaurants.Create

  alias ElixirApiWeb.FallbackController

  action_fallback FallbackController

  def create(conn, params) do
    with {:ok, %Restaurant{} = restaurant} <- Create.call(params) do
      conn
      |> put_status(:created)
      |> render("create.json", restaurant: restaurant)
    end
  end
end
