# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :elixir_pay,
  ecto_repos: [ElixirPay.Repo]

# Configures the endpoint
config :elixir_pay, ElixirPayWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "CmLevUFk06LGX6vHSoWY7YAuVwhm8Bi3W+QXmzkN2trNkC1HHMaZupExHFVVBPIv",
  render_errors: [view: ElixirPayWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: ElixirPay.PubSub,
  live_view: [signing_salt: "KFI3/v5H"]

config :elixir_pay, ElixirPay.Repo,
  migration_primary_key: [type: :binary_id],
  migration_foreign_key: [type: :binary_id]

config :elixir_pay, :basic_auth,
  username: "banana",
  password: "nanica123"

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
