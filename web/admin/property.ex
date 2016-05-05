defmodule Synergy.ExAdmin.Property do
  use ExAdmin.Register

  register_resource Synergy.Property do
    form property do
      inputs do
        input property, :name
        input property, :permalink
        input property, :overridable_in_variant
        input property, :type_uid, collection: Synergy.Property.translated_types#, html_opts: %{class: "select2", multiple: true}
        input property, :unit_name
      end
    end
  end
end
