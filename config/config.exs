# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :fuu,
  ecto_repos: [Fuu.Repo]

# Configures the endpoint
config :fuu, Fuu.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Mt7BJe/40S2mAniaUmN+3Wty0Df4M+1bYzcz+0LPS8Rofyx1B49tEiZLMF0I8vK4",
  render_errors: [view: Fuu.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Fuu.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
