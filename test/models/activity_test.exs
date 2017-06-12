defmodule PhoenixTodo.ActivityTest do
  use PhoenixTodo.ModelCase

  alias PhoenixTodo.Activity

  @valid_attrs %{description: "some content", endDate: %{day: 17, month: 4, year: 2010}, name: "some content", position: 42, startDate: %{day: 17, month: 4, year: 2010}}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Activity.changeset(%Activity{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Activity.changeset(%Activity{}, @invalid_attrs)
    refute changeset.valid?
  end
end
