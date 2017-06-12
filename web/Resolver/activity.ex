defmodule PhoenixTodo.Resolver.Activity do

  alias PhoenixTodo.Activity
  alias PhoenixTodo.Repo

  def find(%{id: id}, _info) do
    case Repo.get(Activity, id) do
      nil  -> {:error, "Activity id #{id} not found"}
      activity -> {:ok, activity}
    end
  end

  def all(_args, _info) do
    {:ok, Repo.all(Activity) }
  end

  def create(args, _info) do
    %Activity{}
    |> Activity.changeset(args)
    |> Repo.insert
  end
end
