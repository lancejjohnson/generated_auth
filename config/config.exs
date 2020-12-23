# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :generated_auth,
  ecto_repos: [GeneratedAuth.Repo]

# Configures the endpoint
config :generated_auth, GeneratedAuthWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LsmX4dCq2vEO+20SD9S4K94PlKnGDHBWR41uDI1RI3Z794Ni9FwjT8dInIVwT/cQ",
  render_errors: [view: GeneratedAuthWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: GeneratedAuth.PubSub,
  live_view: [signing_salt: "JU0USWhR"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
