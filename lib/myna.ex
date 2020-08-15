defmodule Myna do
  @moduledoc false

  use Application

  def start(_start_type, _start_args) do
    IO.puts("Starting the application")

    children =
      :slack
      |> Application.get_env(:api_token)
      |> children()

    Supervisor.start_link(children, strategy: :one_for_one)
  end

  @doc """
  Used only for initial tests
  """
  def hello(), do: :world

  defp children(nil) do
    IO.puts("Slack Bot not started: api token not configured")
    []
  end

  defp children(token) do
    [
      %{
        id: Slack.Bot,
        start: {Slack.Bot, :start_link, [Myna.SlackRtm, [], token]}
      }
    ]
  end
end
