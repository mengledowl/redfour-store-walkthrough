defmodule Redfour.Shopping.Db do
  use Moebius.Database
  import Moebius.DocumentQuery
  alias Redfour.Shopping.Db

  # session stuff
  def find_or_create_session(%{key: key, domain: domain} = args) do
    case db(:sessions) |> contains(key: key) |> Db.first do
      nil -> db(:sessions) |> Db.save(struct(%Redfour.Shopping.Session{}, args))
      found -> found
    end
  end

  def save_session(session) do
    db(:sessions) |> Db.save(session)
  end
end