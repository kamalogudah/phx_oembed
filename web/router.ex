defmodule PhxOembed.Router do
  use PhxOembed.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhxOembed do
    pipe_through :api # Use the default browser stack

    get "/", CardController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", PhxOembed do
  #   pipe_through :api
  # end
end
