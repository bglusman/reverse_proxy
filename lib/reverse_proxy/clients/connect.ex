defmodule ReverseProxy.Clients.Connect do
  use HTTPoison.Base

  @host Application.get_env(:reverse_proxy, :connect)[:host]
  @secret Application.get_env(:reverse_proxy, :connect)[:secret]

  def process_url(url) do
    @host <> url
  end

  def process_request_headers(headers) do
    List.keyreplace(headers, "accept", 0, {"accept", "text/html"})
  end
end
