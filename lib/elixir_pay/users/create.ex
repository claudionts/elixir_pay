defmodule ElixirPay.Users.Create do
  alias ElixirPay.{Repo, User}

  def call(params) do
    params
    |> User.changeset
    |> Repo.insert
  end
end