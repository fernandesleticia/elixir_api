# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :elixir_api,
  ecto_repos: [ElixirApi.Repo]

# Configures the endpoint
config :elixir_api, ElixirApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tCVgqGdIQ4ixnuO1vPY56UeM1nkXRnNHrny4Hvugwj6TqvQEwIy11IUcTrrmvGf9",
  render_errors: [view: ElixirApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: ElixirApi.PubSub,
  live_view: [signing_salt: "jFL6pmPR"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
