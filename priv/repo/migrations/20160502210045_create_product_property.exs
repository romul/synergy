defmodule Synergy.Repo.Migrations.CreateProductProperty do
  use Ecto.Migration

  def change do
    create table(:products_properties) do
      add :position, :integer, default: 1
      add :num_value, :decimal
      add :bool_value, :boolean, default: false, null: false
      add :str_value, :string
      add :possible_value_ids, {:array, :integer}
      add :product_id, references(:products, on_delete: :nothing)
      add :property_id, references(:properties, on_delete: :nothing)
      add :variant_id, references(:variants, on_delete: :nothing)
      add :possible_value_id, references(:possible_values, on_delete: :nothing)

      timestamps
    end
    create index(:products_properties, [:product_id])
    create index(:products_properties, [:property_id])
    create index(:products_properties, [:variant_id])
    create index(:products_properties, [:possible_value_id])

  end
end
