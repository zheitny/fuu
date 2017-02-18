defmodule Fuu.GalleryController do
  use Fuu.Web, :controller

  def index(conn, _params) do
    :ok = Thumbnex.create_thumbnail("web/static/assets/images/anime/Ilya/1443682049474.jpg", "thumbs/output.jpg",max_height: 300)
    render conn, "index.html"
  end
end
