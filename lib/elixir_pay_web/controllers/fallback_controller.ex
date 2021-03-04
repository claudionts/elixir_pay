defmodule ElixirPayWeb.FallbackController do
  use ElixirPayWeb, :controller

  def call(conn, {:error, result})  do
    conn
    |> put_status(:bad_request)
    |> put_view(ElixirPayWeb.ErrorView)
    |> render("400.json", result: result)
  end
end
