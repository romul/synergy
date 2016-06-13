defmodule Synergy.ExAdmin.Property do
  use ExAdmin.Register
  import Ecto.Query

  @name_column :name

  register_resource Synergy.Property do
    show property do
      attributes_table
    end
    form property do
      inputs do
        input property, :name, type: :text
        input property, :permalink
        input property, :overridable_in_variant
        input property, :type_uid, collection: Synergy.Property.translated_types#, html_opts: %{class: "select2", multiple: true}
        input property, :unit_name
      end
    end
  end

#  def display_name(property) do
#    property.name
#  end

  #def admin_search_query(keywords) do
#    from(r in Synergy.Property, where: ilike(r.name, ^("%#{keywords}%")), order_by: [:name])
#  end
end
