defmodule ElixirPayWeb.AccountsController do
  use ElixirPayWeb, :controller

  alias ElixirPay.Account
  alias ElixirPay.Accounts.Transactions.Response, as: TransactionResponse

  action_fallback ElixirPayWeb.FallbackController

  def deposit(conn, params) do
    with {:ok, %Account{} = account} <- ElixirPay.deposit(params) do
      conn
      |> put_status(:created)
      |> render("update.json", account: account)
    end
  end

  def withdraw(conn, params) do
    with {:ok, %Account{} = account} <- ElixirPay.withdraw(params) do
      conn
      |> put_status(:created)
      |> render("update.json", account: account)
    end
  end

  def transaction(conn, params) do
    with {:ok, %TransactionResponse{} = transaction} <- ElixirPay.transaction(params) do
      conn
      |> put_status(:created)
      |> render("transaction.json", transaction: transaction)
    end
  end
end
