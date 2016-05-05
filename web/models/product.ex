defmodule Synergy.Product do
  use Synergy.Web, :model

  schema "products" do
    field :name, :string
    field :permalink, :string
    field :description, :string
    field :digital, :boolean, default: false
    belongs_to :category, Synergy.Category
    has_many :variants, Synergy.Variant
    has_many :images, Synergy.Image
    has_many :product_properties, Synergy.ProductProperty

    timestamps
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :permalink, :description, :digital])
    |> validate_required([:name, :permalink, :description, :digital])
  end
end
