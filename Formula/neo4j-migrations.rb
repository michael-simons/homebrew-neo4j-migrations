class Neo4jMigrations < Formula
  desc "Simple, Flyway DB inspired migrations for Neo4j."
  homepage "https://github.com/michael-simons/neo4j-migrations"
  url "https://github.com/michael-simons/neo4j-migrations/releases/download/4.2.0/neo4j-migrations-4.2.0-osx-aarch_64.zip"
  version "4.2.0"
  sha256 "30b49df232b4da8d829ba337062700ab215bbe773f7b8d8017040d73d01e6d4b"
  license "The Apache Software License, Version 2.0"


  def install
    bash_completion.install "completion/neo4j-migrations_completion" => "neo4j-migrations"
    zsh_completion.install "completion/zsh/_neo4j-migrations" => "_neo4j-migrations"

    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/neo4j-migrations"
  end

  test do
    output = shell_output("#{bin}/neo4j-migrations --version")
    assert_match "neo4j-migrations/4.2.0", output
  end
end
