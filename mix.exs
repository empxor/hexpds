defmodule Hexpds.MixProject do
  use Mix.Project

  def project do
    [
      app: :hexpds,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:httpoison, "~> 1.8"},
      {:cbor, "~> 1.0.0"},
      {:jason, "~> 1.4"},
      {:ex_doc, "~> 0.28.0", only: :dev, runtime: false},
      {:bitcoinex, "~> 0.1.7"},
      {:ex_secp256k1, "~> 0.7.2"},
      {:multibase, "~> 0.0.1"},
    ]
  end
end
