defmodule Synergy.ExAdmin.Category do
  use ExAdmin.Register

  register_resource Synergy.Category do
    show category do
      attributes_table

      panel "Subcategories" do
        table_for(category.children) do
          column :name
          column :permalink
          column :displayable
        end
      end

      panel "Properties" do
        table_for(category.category_properties |> Synergy.Repo.preload(:property) |> Enum.sort_by(&(&1.position)), class: "table sortable", "data-sortable-link": "/admin/categories/#{category.id}/properties/update_positions") do
          column "", [], fn(cp) -> i "", class: "fa fa-bars handle", "aria-hidden": "true" end
          column :property
          column :required
          column :displayable
        end
      end
    end
  end
end
