defmodule ElixirPay.Repo do
  use Ecto.Repo,
    otp_app: :elixir_pay,
    adapter: Ecto.Adapters.Postgres
end
