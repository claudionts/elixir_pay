defmodule ElixirPay do
  alias ElixirPay.Users.Create, as: UserCreate

  alias ElixirPay.Accounts.{Deposit, Withdraw}
  
  defdelegate create_user(params), to: UserCreate, as: :call

  defdelegate deposit(params), to: Deposit, as: :call

  defdelegate withdraw(params), to: Withdraw, as: :call
end
