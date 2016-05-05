defmodule Synergy.Repo.Migrations.CreateProperty do
  use Ecto.Migration

  def change do
    create table(:properties) do
      add :name, :string
      add :permalink, :string
      add :type_uid, :integer
      add :overridable_in_variant, :boolean, default: false, null: false
      add :unit_name, :string

      timestamps
    end

  end
end
