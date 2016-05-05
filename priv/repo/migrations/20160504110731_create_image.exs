defmodule Synergy.Repo.Migrations.CreateImage do
  use Ecto.Migration

  def change do
    create table(:images) do
      add :picture, :string
      add :alt, :string
      add :position, :integer, default: 1
      add :product_id, references(:products, on_delete: :nothing)
      add :variant_id, references(:variants, on_delete: :nothing)

      timestamps
    end
    create index(:images, [:product_id])
    create index(:images, [:variant_id])

  end
end
