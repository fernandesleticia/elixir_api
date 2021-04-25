# ElixirApi


### dependencies
* credo
  > https://github.com/rrrene/credo
* bamboo
  > https://github.com/thoughtbot/bamboo

### testing
- install dependencies
  > `mix deps.get`

- create and migrate your database
  > `mix ecto.setup`

- start server and visit localhost:4000
  > `mix phx.server`

- start server with console
  > `iex -S mix phx.server`

- creating
  > POST localhost:4000/api/restaurants?name=let&email="email@let.com

- sending email
  > ElixirApi.Supplies.ExpirationNotification.send()

### testing database
- creating entry
> alias ElixirApi.Repo

> alias ElixirApi.Restaurant

> changeset = Restaurant.changeset(%{name: "let", email: 
"let@email"})

> changeset |> Repo.insert()

