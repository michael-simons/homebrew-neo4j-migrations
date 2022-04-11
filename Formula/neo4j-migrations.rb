class Neo4jMigrations < Formula
  desc "Simple, Flyway DB inspired migrations for Neo4j."
  homepage "https://github.com/michael-simons/neo4j-migrations"
  url "https://github.com/michael-simons/neo4j-migrations/releases/download/1.5.4/neo4j-migrations-1.5.4-osx-x86_64.zip"
  version "1.5.4"
  sha256 "74eed81eb5936671afc92d5f4ab80a0f0f28c5be05901468ccc974d7de21f5df"
  license "The Apache Software License, Version 2.0"


  def install
    bash_completion.install "completion/neo4j-migrations_completion" => "neo4j-migrations"
    zsh_completion.install "completion/zsh/_neo4j-migrations" => "_neo4j-migrations"

    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/neo4j-migrations"
  end

  test do
    output = shell_output("#{bin}/neo4j-migrations --version")
    assert_match "neo4j-migrations/1.5.4", output
  end
end
