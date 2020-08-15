defmodule Myna do
  @moduledoc false

  use Application

  import Supervisor.Spec, only: [supervisor: 2]

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
      supervisor(Slack.Bot, [Myna.SlackRtm, [], token])
    ]
  end
end
