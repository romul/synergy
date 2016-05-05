defmodule Synergy.PossibleValue do
  use Synergy.Web, :model

  schema "possible_values" do
    field :value, :string
    field :position, :integer
    belongs_to :property, Synergy.Property

    timestamps
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:value, :position])
    |> validate_required([:value, :position])
  end
end
