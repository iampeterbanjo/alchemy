defmodule Persona.Router do
  use Persona.Web, :router

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

  scope "/", Persona do
    pipe_through :browser # Use the default browser stack

    get "/typography", ProjectController, :typography
    get "/", ProjectController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", Persona do
  #   pipe_through :api
  # end
end
