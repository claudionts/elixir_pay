defmodule ElixirPay.Account do
  use Ecto.Schema
  import Ecto.Changeset

  alias Ecto.Changeset
  alias ElixirPay.User

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

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
    |>check_constraint(:balance, name: :balance_must_be_positive_or_zero)
  end
end