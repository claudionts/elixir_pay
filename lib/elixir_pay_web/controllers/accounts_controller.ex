defmodule ElixirPayWeb.AccountsController do
  use ElixirPayWeb, :controller

  alias ElixirPay.Account

  action_fallback ElixirPayWeb.FallbackController

  def deposit(conn, params) do
    with {:ok, %Account{} = account} <- ElixirPay.deposit(params) do
      conn
      |> put_status(:created)
      |> render("update.json", account: account)
    end
  end
end
