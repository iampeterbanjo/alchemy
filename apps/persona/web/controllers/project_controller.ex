defmodule Persona.ProjectController do
  use Persona.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end