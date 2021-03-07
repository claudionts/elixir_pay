defmodule ElixirPay do
  alias ElixirPay.Users.Create, as: UserCreate

  alias ElixirPay.Accounts.Deposit
  
  defdelegate create_user(params), to: UserCreate, as: :call

  defdelegate deposit(params), to: Deposit, as: :call 
end
