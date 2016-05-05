defmodule Synergy.Repo.Migrations.CreateVariant do
  use Ecto.Migration

  def change do
    create table(:variants) do
      add :name, :string
      add :sku, :string
      add :product_id, references(:products, on_delete: :nothing)

      timestamps
    end
    create index(:variants, [:product_id])

  end
end
