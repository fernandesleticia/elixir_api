defmodule ElixirApi.WelcomerTest do
  use ExUnit.Case

  alias ElixirApi.Welcomer

  describe "welcome/1" do
    test "when the user is ley, returns a salutation" do
      params = %{"name" => "let", "age" => "25"}
      result = Welcomer.welcome(params)

      assert result == {:ok, "Hello again"}
    end

    test "when the user is not let, returns welcome" do
      params = %{"name" => "hugo", "age" => "25"}
      result = Welcomer.welcome(params)

      assert result == {:ok, "Welcome hugo"}
    end

    test "when the user cannot pass, returns error" do
      params = %{"name" => "bob", "age" => "12"}
      result = Welcomer.welcome(params)

      assert result == {:error, "You shall not pass bob"}
    end
  end
end
