defmodule Synergy.PropertyTest do
  use Synergy.ModelCase

  alias Synergy.Property

  @valid_attrs %{name: "some content", overridable_in_variant: true, permalink: "some content", type_uid: 42, unit_name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Property.changeset(%Property{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Property.changeset(%Property{}, @invalid_attrs)
    refute changeset.valid?
  end
end
