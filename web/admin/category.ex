defmodule Synergy.ExAdmin.Category do
  use ExAdmin.Register
  alias Synergy.{Category,CategoryProperty}

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
        table_for(category.category_properties, sortable: [resource: category, assoc_name: "category_properties"]) do
          sort_handle_column
          column :property
          column :required, toogle: true
          column :displayable, toogle: true
        end
      end
    end

    query do
      %{show: [preload: [
        :parent,
        :children,
        category_properties: from(CategoryProperty, order_by: [:position], preload: [:property])
        ]] }
    end
  end
end
