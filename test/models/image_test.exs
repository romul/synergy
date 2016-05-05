defmodule Synergy.ImageTest do
  use Synergy.ModelCase

  alias Synergy.Image

  @valid_attrs %{alt: "some content", picture: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Image.changeset(%Image{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Image.changeset(%Image{}, @invalid_attrs)
    refute changeset.valid?
  end
end
