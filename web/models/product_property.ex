defmodule Synergy.ProductProperty do
  use Synergy.Web, :model

  schema "products_properties" do
    field :position, :integer
    field :num_value, :decimal
    field :bool_value, :boolean, default: false
    field :str_value, :string
    field :possible_value_ids, {:array, :integer}
    belongs_to :product, Synergy.Product
    belongs_to :property, Synergy.Property
    belongs_to :variant, Synergy.Variant
    belongs_to :possible_value, Synergy.PossibleValue

    timestamps
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:num_value, :bool_value, :str_value, :possible_value_ids])
    |> validate_required([:num_value, :bool_value, :str_value, :possible_value_ids])
  end
end
