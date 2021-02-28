defmodule ElixirPay do
  alias ElixirPay.Users.Create, as: UserCreate
  
  defdelegate create_user(params), to: UserCreate, as: :call
end
