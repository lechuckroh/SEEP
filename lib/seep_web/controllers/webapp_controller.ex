defmodule SeepWeb.WebappController do
  use SeepWeb, :controller

  def index(conn, _params) do
    conn
    |> send_resp(200, render_webapp())
  end

  defp render_webapp() do
    Application.app_dir(:seep, "priv/static/webapp/index.html")
    |> File.read!()
  end
end
