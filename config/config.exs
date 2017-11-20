# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :elm_webrtc_example, ElmWebrtcExampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "dJbH9R65YH5m22N+kH1irnBwyW7BE5QAJqrAaJnK65zFAWD2flYjc9HAcaZqRIPP",
  render_errors: [view: ElmWebrtcExampleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElmWebrtcExample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
