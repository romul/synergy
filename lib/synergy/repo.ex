defmodule Synergy.Repo do
  use Ecto.Repo, otp_app: :synergy
  use Scrivener, page_size: 10
end
