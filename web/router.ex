defmodule Synergy.Router do
  use Synergy.Web, :router
  use ExAdmin.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Synergy do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/admin", ExAdmin do
    pipe_through :browser
    admin_routes

    #post "/categories/:category_id/properties/update_positions", CategoryPropertyController, :update_positions
  end

  # Other scopes may use custom stacks.
  # scope "/api", Synergy do
  #   pipe_through :api
  # end
end
