defmodule Rumbl.User do
  use Rumbl.Web, :model

  schema "users" do
    field :name, :string
    field :username, :string
    field :password, :string, virtual: true
    field :password_hash, :string

    timestamps()
  end

  def changeset(user, params \\ %{}) do
    user
    |> cast(params, [:name, :username, :password])
    |> validate_length(:username, min: 1, max: 20)
  end
end