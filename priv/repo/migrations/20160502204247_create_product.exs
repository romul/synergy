defmodule Synergy.Repo.Migrations.CreateProduct do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :name, :string
      add :permalink, :string
      add :description, :text
      add :digital, :boolean, default: false, null: false
      add :category_id, references(:categories, on_delete: :nothing)

      timestamps
    end
    create index(:products, [:category_id])

  end
end
