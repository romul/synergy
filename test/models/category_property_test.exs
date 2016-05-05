defmodule Synergy.CategoryPropertyTest do
  use Synergy.ModelCase

  alias Synergy.CategoryProperty

  @valid_attrs %{displayable: true, position: 42, required: true}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = CategoryProperty.changeset(%CategoryProperty{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = CategoryProperty.changeset(%CategoryProperty{}, @invalid_attrs)
    refute changeset.valid?
  end
end
