defmodule PhoenixTodo.Schema.Types do
  use Absinthe.Schema.Notation

  object :activity do
    field :id, :id
    field :name, :string
    field :description, :string
    field :start_date, :datetime
    field :end_date, :datetime
    field :position, :integer
    field :inserted_at, :datetime
    field :updated_at, :datetime
  end

  scalar :datetime, description: "ISOz datetime" do
    parse &Timex.parse(&1.value, "{ISO:Extended:Z}")
    serialize &Timex.format!(&1, "{ISO:Extended:Z}")
  end
end
