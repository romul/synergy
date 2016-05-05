defmodule Synergy.PossibleValueTest do
  use Synergy.ModelCase

  alias Synergy.PossibleValue

  @valid_attrs %{position: 42, value: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = PossibleValue.changeset(%PossibleValue{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = PossibleValue.changeset(%PossibleValue{}, @invalid_attrs)
    refute changeset.valid?
  end
end
