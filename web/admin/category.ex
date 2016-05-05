defmodule Synergy.ExAdmin.Category do
  use ExAdmin.Register
  alias Synergy.Category

  register_resource Category do
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
        table_for(Category.sorted_category_properties(category), class: "table sortable",
          "data-sortable-link": "/admin/categories/#{category.id}/properties/update_positions") do
          column "", [], fn(cp) -> i "", class: "fa fa-bars handle", "aria-hidden": "true" end
          column :property
          column :required
          column :displayable
        end
      end
    end
  end
end
