import Config

# example usage:
#  Application.get_env(:hipdster, :plc_server)

config :hipdster,
  plc_server: "plc.bsky-sandbox.dev",
  appview_server: "public.api.bsky.app",
  relay_server: "bgs.bsky-sandbox.dev",
  # ignore pls for now
  pds_host: "abyss.computer",
  multicodec_csv_path: "multicodec.csv",
  admin_password: "admin",
  # or Ecto.Adapters.Postgres in production
  ecto_adapter: Ecto.Adapters.SQLite3,
  ecto_repos: [Hipdster.Database],
  port: (case Mix.env do
    :prod -> 3999
    :dev -> 4000
    :test -> 4001
  end)

config :hipdster, Hipdster.Database,
  # Replace with Postgres URL in production!
  url: "sqlite3:///pds"

config :mnesia,
  dir: ~c".mnesia/#{Mix.env()}/#{node()}"
