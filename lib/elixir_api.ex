defmodule ElixirApi do
  alias ElixirApi.Restaurants.Create, as: RestaurantCreate
  alias ElixirApi.Supplies.Create, as: SupplyCreate

  defdelegate create_restaurant(params), to: RestaurantCreate, as: :call
  defdelegate create_supply(params), to: SupplyCreate, as: :call
end
