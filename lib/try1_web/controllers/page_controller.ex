defmodule Try1Web.PageController do
  use Try1Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
