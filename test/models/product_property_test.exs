defmodule Synergy.ProductPropertyTest do
  use Synergy.ModelCase

  alias Synergy.ProductProperty

  @valid_attrs %{bool_value: true, num_value: "120.5", possible_value_ids: 42, str_value: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = ProductProperty.changeset(%ProductProperty{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = ProductProperty.changeset(%ProductProperty{}, @invalid_attrs)
    refute changeset.valid?
  end
end
