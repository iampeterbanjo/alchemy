defmodule Persona.ProjectController do
  use Persona.Web, :controller

  def index(conn, _params) do
    projects = Repo.all(Persona.Project)
    render conn, "index.html", projects: projects
  end

  def typography(conn, _params) do
    render conn, "typography.html"
  end
end