defmodule Synergy.CategoryTest do
  use Synergy.ModelCase

  alias Synergy.Category

  @valid_attrs %{displayable: true, name: "some content", permalink: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Category.changeset(%Category{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Category.changeset(%Category{}, @invalid_attrs)
    refute changeset.valid?
  end
end
