defmodule Fuu.Router do
  use Fuu.Web, :router

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

  scope "/", Fuu do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/gallery", GalleryController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", Fuu do
  #   pipe_through :api
  # end
end
