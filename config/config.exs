import Config

config :discuss,
  ecto_repos: [Discuss.Repo]

# Configures the endpoint
config :discuss, DiscussWeb.Endpoint,
  # http: [port: 4000],
  # port: 4000
  url: [host: "localhost"],
  # cache_static_manifest: "priv/static/cache_manifest.json",
  # server: true,
  secret_key_base: "flhE3KgXL84xJ9jApxJqNR9CGub1l/x9rELcg+yO22NXO5xd4/CNovP6lYFJzDY1",
  render_errors: [view: DiscussWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Discuss.PubSub,
  live_view: [signing_salt: "bIM7vwcv"]

# watchers: [
#   node: [
#     "node_modules/webpack/bin/webpack.js",
#     "--mode",
#     "development",
#     "--watch-stdin",
#     cd: Path.expand("../assets", __DIR__)
#   ]
# ],
# cowboy: [
#   port: 4001,
#   dispatch: [
#     {:_,
#      [
#        {"/websocket", Phoenix.Endpoint.CowboyWebSocket, {Discuss.Endpoint, []}},
#        {:_, Plug.Adapters.Cowboy.Handler, {Discuss.Endpoint, []}}
#      ]}
#   ]
# ]

# Configures the mailer
#
# By default it uses the "Local" adapter which stores the emails
# locally. You can see the emails in your browser, at "/dev/mailbox".
#
# For production it's recommended to configure a different adapter
# at the `config/runtime.exs`.
config :discuss, Discuss.Mailer, adapter: Swoosh.Adapters.Local

# Swoosh API client is needed for adapters other than SMTP.
config :swoosh, :api_client, false

# Configure esbuild (the version is required)
config :esbuild,
  version: "0.14.29",
  default: [
    args:
      ~w(js/app.js --bundle --target=es2017 --outdir=../priv/static/assets --external:/fonts/* --external:/images/*),
    cd: Path.expand("../assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"

config :ueberauth, Ueberauth,
  providers: [
    github: {Ueberauth.Strategy.Github, [default_scope: "user:email"]}
  ]

config :ueberauth, Ueberauth.Strategy.Github.OAuth,
  client_id: "4944b121992bf62f9dee",
  client_secret: "c5eef119a45ebe706ff0d5b0d5752f8890c3f059"

# config :Discuss, DiscussWeb.Endpoint, socket: true
