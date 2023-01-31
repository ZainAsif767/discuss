defmodule Discuss.Repo do
  use Ecto.Repo,
    otp_app: :discuss,
    adapter: Ecto.Adapters.Postgres
end
