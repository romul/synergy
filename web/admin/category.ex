defmodule Synergy.ExAdmin.Category do
  use ExAdmin.Register
  alias Synergy.{Category,CategoryProperty}

  register_resource Category do
    scope :all, default: true
    scope :displayable, fn(q) ->
      where(q, [p], p.displayable)
    end

    show category do
      attributes_table do
        row :name
        row :permalink
        row :displayable
      end

      panel "Children" do
        table_for(category.children) do
          column :name, &(String.upcase(&1.name))
          column :name, &(b to_string(String.length(&1.name)))
        end
      end

      panel "Properties" do
        sortable_table_for(category, :category_properties) do
          column :property
          column :required, toggle: true
          column :displayable, toggle: true

          # ExAdmin.Index.actions [:destroy]
        end

        markup_contents do
          association_filler(category, :properties, autocomplete: false)
        end
      end
    end

    query do
      %{
        show: [preload: [
          :parent,
          :children,
          category_properties: from(CategoryProperty, order_by: [:position], preload: [:property])
        ]],
        all: [preload: [:parent, :children, :category_properties]]
      }
    end
  end
end
