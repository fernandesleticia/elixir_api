defmodule ElixirApiWeb.SuppliesView do
  use ElixirApiWeb, :view

  def render("create.json", %{supply: supply}) do
    %{
      message: "Supply created!",
      supply: supply
    }
  end
end