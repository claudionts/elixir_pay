defmodule ElixirPay.Account do
  use Ecto.Schema
  import Ecto.Changeset

  alias Ecto.Changeset
  alias ElixirPay.User

  @primary_key {:id, :binary_id, autogenerate: true}

  @required_param [:balance, :user_id]

  schema "accounts" do
    field :balance, :decimal
    belongs_to :user, User
    
    timestamps()
  end

  def changeset(params) do
    %__MODULE__{}
    |>cast(params, @required_param)
    |>validate_required(@required_param)
    |>validate_length(:password, min: 6)
    |>validate_number(:age, greater_than_or_equal_to: 18)
    |>validate_format(:email, ~r/@/)
    |>unique_constraint([:email])
    |>unique_constraint([:nickname])
    |>put_password_hash()
  end
end