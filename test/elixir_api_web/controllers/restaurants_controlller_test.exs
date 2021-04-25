defmodule ElixirApiWeb.RestaurantsControllerTest do
  use ElixirApiWeb.ConnCase, async: true

  describe "create/2" do
    test "when the params are valid, create the restaurant", %{conn: conn} do
      params = %{name: "let's restaurant", email: "let@restaurant"}

      response =
        conn
        |> post(Routes.restaurants_path(conn, :create, params))
        |> json_response(:created)

      assert %{
        "message" => "Restaurant created!",
        "restaurant" => %{"email" => "let@restaurant",
        "id" => _id,
        "name" => "let's restaurant"
        }
      } = response
    end

    test "when the name is invalid, returns an error", %{conn: conn} do
      params = %{email: "let@restaurant"}
      expected_response = %{"message" => %{"name" => ["can't be blank"]}}

      response =
        conn
        |> post(Routes.restaurants_path(conn, :create, params))
        |> json_response(:bad_request)

      assert response == expected_response
    end

    test "when the email is invalid, returns an error", %{conn: conn} do
      params = %{name: "let"}
      expected_response = %{"message" => %{"email" => ["can't be blank"]}}

      response =
        conn
        |> post(Routes.restaurants_path(conn, :create, params))
        |> json_response(:bad_request)

      assert response == expected_response
    end
  end
end
