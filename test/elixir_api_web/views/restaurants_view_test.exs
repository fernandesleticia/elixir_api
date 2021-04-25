defmodule ElixirApiWeb.RestaurantsViewTest do
  use ElixirApiWeb.ConnCase

  import Phoenix.View

  alias ElixirApiWeb.RestaurantsView
  alias ElixirApi.Restaurant

  describe "render/2" do
    test "renders create.json" do
      params = %{name: "let's restaurant", email: "let@restaurant"}
      {:ok, restaurant} = ElixirApi.create_restaurant(params)

      response = render(RestaurantsView, "create.json", restaurant: restaurant)

      assert %{
        message: "Restaurant created!",
        restaurant: %Restaurant{
          email: "let@restaurant",
          id: _id,
          name: "let's restaurant"
        }
      } = response
    end
  end
end
