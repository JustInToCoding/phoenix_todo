defmodule PhoenixTodo.Activity do
  use PhoenixTodo.Web, :model

  schema "activities" do
    field :name, :string
    field :description, :string
    field :start_date, Ecto.Date
    field :end_date, Ecto.Date
    field :position, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :description, :start_date, :end_date, :position])
    |> validate_required([:name, :description])
  end
end
