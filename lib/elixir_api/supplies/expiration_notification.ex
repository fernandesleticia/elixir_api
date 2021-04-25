defmodule ElixirApi.Supplies.ExpirationNotification do
  alias ElixirApi.Mailer
  alias ElixirApi.Supplies.{ExpirationEmail,GetByExpiration}

  def send do
    data = GetByExpiration.call()

    Enum.each(data, fn {to_email, supplies} ->
      to_email
      |> ExpirationEmail.create(supplies)
      |> Mailer.deliver_later!()
    end)
  end
end
