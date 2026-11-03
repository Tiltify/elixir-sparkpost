defmodule SparkPost.Mixfile do
  use Mix.Project

  def project do
    [app: :sparkpost,
     version: "0.5.2",
     elixir: "~> 1.18",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     source_url: "https://github.com/SparkPost/elixir-sparkpost",
     description: "The official Elixir package for the SparkPost API",
     package: package(),
     deps: deps(),
     docs: [
       extras: ["README.md", "CONTRIBUTING.md", "CHANGELOG.md"]
     ]
   ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:httpoison, "~> 3.0"},
      {:poison, "~> 2.0 or ~> 3.0"},
      {:mock, "~> 0.3.0", only: :test},
      {:credo, "~> 1.7", only: [:dev, :test]},
      {:earmark, "~> 1.4", only: :dev},
      {:ex_doc, "~> 0.14.3", only: :dev}
    ]
  end

  defp package do
    [
      files: ["mix.exs", "lib", "README.md", "CONTRIBUTING.md", "LICENSE.md"],
      maintainers: ["Ewan Dennis"],
      licenses: ["Apache 2.0"],
      links: %{
        "Github" => "https://github.com/SparkPost/elixir-sparkpost",
        "SparkPost.com" => "https://www.sparkpost.com/"
      }
    ]
  end
end

