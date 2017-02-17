defmodule Proxy.Plug do
  def init(options) do
    options
  end

  def call(conn, _opts) do
    cond do
      conn.request_path =~ ~r{/rumbl} ->
        Rumbl.Endpoint.call(conn, [])
      true ->
        Persona.Endpoint.call(conn, [])
    end
  end
end
