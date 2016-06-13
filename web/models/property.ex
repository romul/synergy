defmodule Synergy.Property do
  use Synergy.Web, :model
  alias Synergy.UID

  schema "properties" do
    field :name, :string
    field :permalink, :string
    field :type_uid, :integer
    field :overridable_in_variant, :boolean, default: false
    field :unit_name, :string
    has_many :possible_values, Synergy.PossibleValue

    timestamps
  end

  @types %{
    UID.string  => :string,
    UID.integer => :integer,
    UID.float   => :float,
    UID.choice  => :choice_from_set_of_values,
    UID.boolean => :boolean,
    UID.multi_choice => :multi_choice,
    UID.set_of_properties => :set_of_properties
  }
  def types, do: @types
  def translated_types do
    Enum.map(types, fn({uid, name}) -> {uid, to_string(name)} end)
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :permalink, :type_uid, :overridable_in_variant, :unit_name])
    |> validate_required([:name, :permalink, :type_uid, :overridable_in_variant])
  end


  #def admin_search_query(keywords) do
#    from(p in Synergy.Property, where: ilike(p.name, ^("%#{keywords}%")), order_by: [:name])
#  end

  def display_name(property) do
    "#{property.id} - #{property.name}"
  end
end
