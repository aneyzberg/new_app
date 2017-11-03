defmodule NewApp do
  use Application
  use Supervisor

  @moduledoc """
  Documentation for NewApp.
  """

  def start(_type, _args) do
    Supervisor.start_link([{NewApp.Router, []}, {NewApp.ApiServer, []}], strategy: :one_for_one)
  end
 

  @doc """
  say name
  ## Parameters 
  -name: String of person
  

  ## Examples

      iex> NewApp.say("anna")
      "Hello anna"

  """

  @spec say(String.t) :: String.t
  def say(name) do
    "Hello #{name}"
  end
end
