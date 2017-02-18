defmodule Persona.Repo do

  @moduledoc """
  In memory repository
  """

  def all(Persona.Project) do
    [
      %Persona.Project{
        id: "1",
        client: "Fujitsu",
        title: "New pace of change",
        description: "Corporate infographic site to show survey results about changing consumer behaviour",
        year: "2016",
        type: "front-end",
        url: "http://newpaceofchange.com/",
        img_src: "https://drive.google.com/uc?id=0B08LUR8Au8kpVGJtSzlVVFZ6am8"
      },
      %Persona.Project{
        id: "2",
        client: "Fujitsu",
        title: "Ambassador hub",
        description: "Social engagement site for education leaders",
        year: "2016",
        type: "front-end",
        url: "http://www.educationambassador.co.uk/",
        img_src: "https://drive.google.com/uc?id=0B08LUR8Au8kpeVVWSWdmb091NDQ"},
      %Persona.Project{
        id: "3",
        client: "DirectionGroup",
        title: "Digital agency website",
        description: "In-house,
        corporate re-brand",
        year: "2015",
        type: "front-end",
        url: "http://www.directiongroup.com/",
        img_src: "https://drive.google.com/uc?id=0B08LUR8Au8kpaXVDX0hqQTF4R1U"},
      %Persona.Project{
        id: "4",
        client: "GBG Plc",
        title: "Coporate re-brand",
        description: "New digital identity for an established corporate brand",
        year: "2015",
        type: "front-end",
        url: "https://www.gbgplc.com/uk/",
        img_src: "https://drive.google.com/uc?id=0B08LUR8Au8kpRUNBNFhrQy1paXc"}
    ]
  end

  def all(_module), do: []

  def get(module, id) do
    Enum.find all(module), fn map -> map.id == id end
  end

  def get_by(module, params) do
    Enum.find all(module), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end
  end
end
