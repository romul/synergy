defmodule Synergy.Category do
  use Synergy.Web, :model
  alias Synergy.{Category, CategoryProperty}

  schema "categories" do
    field :name, :string
    field :permalink, :string
    field :displayable, :boolean, default: false
    belongs_to :parent, Category
    has_many :category_properties, CategoryProperty#, fn(query) ->
    #  from cp in query, order_by: cp.position
    #end
    has_many :properties, through: [:category_properties, :property]
    has_many :children, Category, foreign_key: :parent_id

    timestamps
  end

  @required_fields [:name, :permalink, :displayable]
  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:parent_id, :name, :permalink, :displayable])
    |> cast_assoc(:category_properties)
    |> validate_required(@required_fields)
  end
end
