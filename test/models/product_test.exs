defmodule Synergy.ProductTest do
  use Synergy.ModelCase

  alias Synergy.Product

  @valid_attrs %{description: "some content", digital: true, name: "some content", permalink: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Product.changeset(%Product{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Product.changeset(%Product{}, @invalid_attrs)
    refute changeset.valid?
  end
end
