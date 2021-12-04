defmodule Sns.MessagesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Sns.Messages` context.
  """

  @doc """
  Generate a message.
  """
  def message_fixture(attrs \\ %{}) do
    {:ok, message} =
      attrs
      |> Enum.into(%{
        contents: "some contents"
      })
      |> Sns.Messages.create_message()

    message
  end
end
