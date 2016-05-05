defmodule Synergy.PageController do
  use Synergy.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
