defmodule GeneratedAuth.AccountsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `GeneratedAuth.Accounts` context.
  """

  def unique_account_email, do: "account#{System.unique_integer()}@example.com"
  def valid_account_password, do: "hello world!"

  def account_fixture(attrs \\ %{}) do
    {:ok, account} =
      attrs
      |> Enum.into(%{
        email: unique_account_email(),
        password: valid_account_password()
      })
      |> GeneratedAuth.Accounts.register_account()

    account
  end

  def extract_account_token(fun) do
    {:ok, captured} = fun.(&"[TOKEN]#{&1}[TOKEN]")
    [_, token, _] = String.split(captured.body, "[TOKEN]")
    token
  end
end
