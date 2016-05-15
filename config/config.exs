# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :synergy,
  ecto_repos: [Synergy.Repo]

# Configures the endpoint
config :synergy, Synergy.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "GCWDOZVGbZJcLL6irqbb0bemJiXZW0ww1wzyRIn+yep4kwHGwSjBRY2NrEq9edca",
  render_errors: [view: Synergy.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Synergy.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :xain, :quote, "'"
config :xain, :after_callback, {Phoenix.HTML, :raw}

config :ex_admin,
  repo: Synergy.Repo,
  module: Synergy,
  theme: ExAdmin.Theme.AdminLte2,
  theme_selector: [
    {"AdminLte",  ExAdmin.Theme.AdminLte2},
    {"ActiveAdmin", ExAdmin.Theme.ActiveAdmin}
  ],
  modules: [
    Synergy.ExAdmin.Dashboard,
    Synergy.ExAdmin.Category,
    Synergy.ExAdmin.Property,
    Synergy.ExAdmin.CategoryProperty,

  ]
