defmodule Sns.Messages.Message do
  use Ecto.Schema
  import Ecto.Changeset

  schema "messages" do
    field :contents, :string

    timestamps()
  end

  @doc false
  def changeset(message, attrs) do
    message
    |> cast(attrs, [:contents])
    |> validate_required([:contents])
  end
end
