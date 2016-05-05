defmodule Synergy.Variant do
  use Synergy.Web, :model

  schema "variants" do
    field :name, :string
    field :sku, :string
    belongs_to :product, Synergy.Product
    has_many :images, Synergy.Image
    has_many :product_properties, Synergy.ProductProperty

    timestamps
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :sku])
    |> validate_required([:name, :sku])
  end
end
