# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_todo,
  ecto_repos: [PhoenixTodo.Repo]

# Configures the endpoint
config :phoenix_todo, PhoenixTodo.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "HBbaIfXjvxUi/a53YLUetCy8gIFmx3VTA5Vmxj9cTjItmxazgZdpXEjCTneSbS+f",
  render_errors: [view: PhoenixTodo.ErrorView, accepts: ~w(json)],
  pubsub: [name: PhoenixTodo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :cors_plug,
  origin: "*", #["foo.bar"],
  max_age: 86400,
  methods: ["GET", "POST", "PUT", "PATCH", "DELETE", "OPTIONS"]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
