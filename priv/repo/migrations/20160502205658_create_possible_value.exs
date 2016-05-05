defmodule Synergy.Repo.Migrations.CreatePossibleValue do
  use Ecto.Migration

  def change do
    create table(:possible_values) do
      add :value, :string
      add :position, :integer, default: 1
      add :property_id, references(:properties, on_delete: :nothing)

      timestamps
    end
    create index(:possible_values, [:property_id])

  end
end
