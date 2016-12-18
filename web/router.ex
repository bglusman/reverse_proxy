defmodule ReverseProxy.Router do
  use ReverseProxy.Web, :router
  use Terraform,
    terraformer: ReverseProxy.Terraformers.Connect

  pipeline :http do
    plug :accepts, ["http"]
  end

  scope "/", ReverseProxy do
    pipe_through :http

    get "/not_rails", LocalController, :index
  end
end
