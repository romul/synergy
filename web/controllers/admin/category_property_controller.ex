defmodule ExAdmin.CategoryPropertyController do
  use Synergy.Web, :controller
  alias Synergy.{Repo, Category}

  def update_positions(conn, %{"category_id" => category_id, "positions" => positions}) do
    Repo.get!(Category, category_id)
    |> Repo.preload(:category_properties)
    |> Category.changeset(%{"category_properties" => positions})
    |> Repo.update!

    conn |> put_status(200) |> json("Ok")
  end
end
