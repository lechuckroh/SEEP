import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :seep, SeepWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "yeyz5bbuN+wrn34KwoyQ/EKf682EF9h+FqHrx6MJeE1avRe9nMosLERMxjnJu0GU",
  server: false

# In test we don't send emails.
config :seep, Seep.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
