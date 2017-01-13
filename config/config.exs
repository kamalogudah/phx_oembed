# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phx_oembed,
  ecto_repos: [PhxOembed.Repo]

# Configures the endpoint
config :phx_oembed, PhxOembed.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "VUUybIWr3iESsyImGm/9uJRRZIgfoeQeVou4lQKK8gmthsx7s+gShi/jW/KaGK24",
  render_errors: [view: PhxOembed.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhxOembed.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
