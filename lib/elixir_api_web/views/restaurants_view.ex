defmodule ElixirApiWeb.RestaurantsView do
  use ElixirApiWeb, :view

  def render("create.json", %{restaurant: restaurant}) do
    %{
      message: "Restaurant created!",
      restaurant: restaurant
    }
  end
end
