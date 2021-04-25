defmodule ElixirApi do
  alias ElixirApi.Restaurants.Create, as: RestaurantCreate
  alias ElixirApi.Supplies.Create, as: SupplyCreate
  alias ElixirApi.Supplies.Get, as: SupplyGet

  defdelegate create_restaurant(params), to: RestaurantCreate, as: :call
  defdelegate create_supply(params), to: SupplyCreate, as: :call
  defdelegate get_supply(params), to: SupplyGet, as: :call
end
