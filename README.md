## ElixirApi
A sample API using Elixir and Phoenix to manage restaurant's supplies by sending a email with the supplies about to expire

### dependencies
* phoenix ~> 1.5.8
  > https://github.com/phoenixframework/phoenix
* elixir 1.11.3
  > https://github.com/elixir-lang/elixir
* credo ~> 1.5
  > https://github.com/rrrene/credo
* bamboo ~> 2.1.0
  > https://github.com/thoughtbot/bamboo
### testing
- install dependencies
  > `mix deps.get`

- create and migrate your database
  > `mix ecto.setup`

- starting server with console (the server will launch on localhost:4000)
  > `iex -S mix phx.server`

- creating restaurant using console
  > alias ElixirApi.Repo

  > alias ElixirApi.Restaurant

  > changeset = Restaurant.changeset(%{name: "let", email: 
"let@email"})

  > changeset |> Repo.insert()

- sending an email using console
  > ElixirApi.Supplies.ExpirationNotification.send()


### endpoints
- creating a restaurant
  > POST localhost:4000/api/restaurants?name=let&email="email@let.com

- creating a supply
  > POST localhost:4000/api/supplies?description=morango&expiration_date=2021-04-12&responsible=let&restaurant_id=709dbe09-09b6-43f0-8571-99d9d96d54fa


