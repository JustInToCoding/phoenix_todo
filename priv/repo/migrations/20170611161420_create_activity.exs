defmodule PhoenixTodo.Repo.Migrations.CreateActivity do
  use Ecto.Migration

  def change do
    create table(:activities) do
      add :name, :string
      add :description, :string
      add :startDate, :date
      add :endDate, :date
      add :position, :integer

      timestamps()
    end

  end
end
