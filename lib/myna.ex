defmodule Myna do
  @moduledoc false

  use Application

  def start(_start_type, _start_args) do
    IO.puts("Starting the application")
    Slack.Bot.start_link(Myna.SlackRtm, [], Application.get_env(:slack, :api_token))
  end
end
