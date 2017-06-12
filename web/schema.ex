defmodule PhoenixTodo.Schema do
  use Absinthe.Schema

  alias PhoenixTodo.Resolver

  import_types PhoenixTodo.Schema.Types

  query do

    @desc "Get all the activities"
    field :activities, list_of(:activity) do
      resolve &Resolver.Activity.all/2
    end

    @desc "Get an activity"
    field :activity, type: :activity do
      arg :id, non_null(:id)
      resolve &Resolver.Activity.find/2
    end
  end

  mutation do
    @desc "Create an activity"
    field :activity, type: :activity do
      arg :name, non_null(:string)
      arg :description, :string
      arg :start_date, :string
      arg :end_date, :string

      resolve &Resolver.Activity.create/2
    end
  end
end

