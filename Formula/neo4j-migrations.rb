class Neo4jMigrations < Formula
  desc "Simple, Flyway DB inspired migrations for Neo4j."
  homepage "https://github.com/michael-simons/neo4j-migrations"
  url "https://github.com/michael-simons/neo4j-migrations/releases/download/3.2.1/neo4j-migrations-3.2.1-osx-aarch_64.zip"
  version "3.2.1"
  sha256 "9f69aed1da1e03ac0ded840e0f295ca962a8040c6bf8ad1cbf7552c340377881"
  license "The Apache Software License, Version 2.0"


  def install
    bash_completion.install "completion/neo4j-migrations_completion" => "neo4j-migrations"
    zsh_completion.install "completion/zsh/_neo4j-migrations" => "_neo4j-migrations"

    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/neo4j-migrations"
  end

  test do
    output = shell_output("#{bin}/neo4j-migrations --version")
    assert_match "neo4j-migrations/3.2.1", output
  end
end
