defmodule Synergy.VariantTest do
  use Synergy.ModelCase

  alias Synergy.Variant

  @valid_attrs %{name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Variant.changeset(%Variant{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Variant.changeset(%Variant{}, @invalid_attrs)
    refute changeset.valid?
  end
end
