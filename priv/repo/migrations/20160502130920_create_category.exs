defmodule Synergy.Repo.Migrations.CreateCategory do
  use Ecto.Migration

  def change do
    create table(:categories) do
      add :name, :string
      add :permalink, :string
      add :displayable, :boolean, default: false, null: false
      add :parent_id, references(:categories, on_delete: :nothing)

      timestamps
    end
    create index(:categories, [:parent_id])

  end
end
