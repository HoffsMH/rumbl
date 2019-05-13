defmodule Rumbl.Accounts do
  @moduledoc """
  The Accounts Context
  """

  alias Rumbl.Accounts.User

  def list_users do
    [

      %User{id: "1", name: "Jose", username: "josevalim"},
      %User{id: "2", name: "Bruce", username: "redrapids"},
      %User{id: "1", name: "Chris", username: "chrismccord"}
    ]
  end

  def get_user(id) do
    Enum.find(list_users(), &(&1.id == id))
  end
end
