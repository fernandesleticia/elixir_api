# ElixirApi


### dependencies
* credo
  > https://github.com/rrrene/credo

### testing
- install dependencies
  > `mix deps.get`

- create and migrate your database
  > `mix ecto.setup`

- start enpoint and visit localhost:4000
  > `mix phx.server`

### testing database
- creating entry
> alias ElixirApi.Repo

> alias ElixirApi.Restaurant

> changeset = Restaurant.changeset(%{name: "let", email: 
"let@email"})

> changeset |> Repo.insert()

