use Mix.Config

database_url = System.get_env("DATABASE_URL")

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :elixir_pay, ElixirPay.Repo,
   # username: "postgres",
  # password: "postgres",
  # database: "postgres",
  # hostname: "localhost",
  # port: 3010,
  url: database_url,
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :elixir_pay, ElixirPayWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
