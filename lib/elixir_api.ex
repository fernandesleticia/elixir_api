defmodule ElixirApi do
  alias ElixirApi.Restaurants.Create

  defdelegate create_restaurant(params), to: Create, as: :call
end
