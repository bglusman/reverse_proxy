defmodule ReverseProxy.LocalController do
  use ReverseProxy.Web, :controller

  def index(conn, _) do
    send_resp(conn, 200, "foo")
  end
end
