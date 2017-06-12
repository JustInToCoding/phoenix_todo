defmodule PhoenixTodo.Repo.Migrations.ChangeActivityFields do
  use Ecto.Migration

  def change do
    rename table(:activities), :startDate, to: :start_date
    rename table(:activities), :endDate, to: :end_date
  end
end
