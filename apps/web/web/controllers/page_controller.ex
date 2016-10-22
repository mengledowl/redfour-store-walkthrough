defmodule Redfour.Web.PageController do
  use Redfour.Web.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
