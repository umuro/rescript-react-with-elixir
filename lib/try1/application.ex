defmodule Try1.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      Try1Web.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Try1.PubSub},
      # Start the Endpoint (http/https)
      Try1Web.Endpoint
      # Start a worker by calling: Try1.Worker.start_link(arg)
      # {Try1.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Try1.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    Try1Web.Endpoint.config_change(changed, removed)
    :ok
  end
end
