defmodule Synergy.Repo.Migrations.CreateCategoryProperty do
  use Ecto.Migration

  def change do
    create table(:categories_properties) do
      add :position, :integer, default: 1
      add :required, :boolean, default: false, null: false
      add :displayable, :boolean, default: false, null: false
      add :category_id, references(:categories, on_delete: :nothing)
      add :property_id, references(:properties, on_delete: :nothing)

      timestamps
    end
    create index(:categories_properties, [:category_id])
    create index(:categories_properties, [:property_id])

  end
end
