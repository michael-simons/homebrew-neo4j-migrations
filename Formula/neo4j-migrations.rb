class Neo4jMigrations < Formula
  desc "Simple, Flyway DB inspired migrations for Neo4j."
  homepage "https://github.com/michael-simons/neo4j-migrations"
  url "https://github.com/michael-simons/neo4j-migrations/releases/download/2.17.1/neo4j-migrations-2.17.1-osx-aarch_64.zip"
  version "2.17.1"
  sha256 "b71c6e1020a37e03edb8930f97eaf60cb11b553d6b360c0facdca5cb2085f143"
  license "The Apache Software License, Version 2.0"


  def install
    bash_completion.install "completion/neo4j-migrations_completion" => "neo4j-migrations"
    zsh_completion.install "completion/zsh/_neo4j-migrations" => "_neo4j-migrations"

    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/neo4j-migrations"
  end

  test do
    output = shell_output("#{bin}/neo4j-migrations --version")
    assert_match "neo4j-migrations/2.17.1", output
  end
end
