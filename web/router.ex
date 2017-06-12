defmodule PhoenixTodo.Router do
  use PhoenixTodo.Web, :router

  if Mix.env == :dev do
    forward "/graphiql",
      Absinthe.Plug.GraphiQL,
      schema: PhoenixTodo.Schema
  end

  forward "/", Absinthe.Plug,
    schema: PhoenixTodo.Schema
end
