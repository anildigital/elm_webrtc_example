defmodule ElmWebrtcExampleWeb.ElmController do
  use ElmWebrtcExampleWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
