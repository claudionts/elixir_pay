defmodule ElixirPayWeb.WelcomeController do
  use ElixirPayWeb, :controller

  def index(conn, _params) do
    text(conn, "Welcome to the ElixirPay API")
  end
end
