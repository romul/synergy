defmodule Synergy.Image do
  use Synergy.Web, :model
  use Arc.Ecto.Schema

  schema "images" do
    field :picture, Synergy.Picture.Type
    field :alt, :string
    field :position, :integer
    belongs_to :product, Synergy.Product
    belongs_to :variant, Synergy.Variant

    timestamps
  end

  @required_fields [:product_id, :variant_id, :picture, :position]
  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:alt, :position])
    |> cast_attachments(params, [:picture])
    |> validate_required(@required_fields)
  end
end
