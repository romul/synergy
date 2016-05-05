defmodule Synergy.CategoryProperty do
  use Synergy.Web, :model

  schema "categories_properties" do
    field :position, :integer, default: 1
    field :required, :boolean, default: false
    field :displayable, :boolean, default: false
    belongs_to :category, Synergy.Category
    belongs_to :property, Synergy.Property

    timestamps
  end

  @required_fields [:category_id, :property_id, :position, :required, :displayable]
  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:category_id, :property_id, :position, :required, :displayable])
    |> validate_required(@required_fields)
  end
end
