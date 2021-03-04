defmodule ElixirPayWeb.UsersController do
  use ElixirPayWeb, :controller

  alias ElixirPay.User

  action_fallback ElixirPayWeb.FallbackController

  def create(conn, params) do
    with {:ok, %User{} = user} <- ElixirPay.create_user(params) do
      conn
      |> put_status(:created)
      |> render("create.json", user: user)
    end
  end
end
