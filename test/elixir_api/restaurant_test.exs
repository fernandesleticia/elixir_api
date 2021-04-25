defmodule ElixirApi.RestaurantTest do
  use ElixirApi.DataCase, async: true

  alias ElixirApi.Restaurant
  alias Ecto.Changeset

  describe "changeset/1" do
    test "when all params are valid, returns a valid changeset" do
      params = %{name: "let's restaurant", email: "let@restaurant"}
      response = Restaurant.changeset(params)

      assert %Changeset{
        changes: %{
          name: "let's restaurant",
          email: "let@restaurant"
          },
          valid?: true
          } = response
    end

    test "when email has an invalid format, returns an invalid changeset" do
      params = %{name: "Any", email: "let"}
      expected_response = %{email: ["has invalid format"]}

      response = Restaurant.changeset(params)

      assert %Changeset{valid?: false} = response
      assert errors_on(response) == expected_response
    end

    test "when email is blank, returns an invalid changeset" do
      params = %{name: "Any", email: ""}
      expected_response = %{email: ["can't be blank"]}

      response = Restaurant.changeset(params)

      assert %Changeset{valid?: false} = response
      assert errors_on(response) == expected_response
    end

    test "when name is too short, returns an invalid changeset" do
      params = %{name: "A", email: "let@restaurant"}
      expected_response = %{name: ["should be at least 2 character(s)"]}

      response = Restaurant.changeset(params)

      assert %Changeset{valid?: false} = response
      assert errors_on(response) == expected_response
    end
  end
end
