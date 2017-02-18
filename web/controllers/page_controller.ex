defmodule Fuu.PageController do
  use Fuu.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
