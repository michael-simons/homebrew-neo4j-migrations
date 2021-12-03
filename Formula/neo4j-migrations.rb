class Neo4jMigrations < Formula
  desc "Simple, Flyway DB inspired migrations for Neo4j."
  homepage "https://github.com/michael-simons/neo4j-migrations"
  version "1.2.0"
  url "https://github.com/michael-simons/neo4j-migrations/releases/download/1.2.0/neo4j-migrations-1.2.0-osx-x86_64.zip"
  sha256 "89453adc41747d5a5462d400a8f90d976285ff8a2f562fdfa8741d7ec4cdc6d4"
  license "The Apache Software License, Version 2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/neo4j-migrations"
  end

  test do
    output = shell_output("#{bin}/neo4j-migrations --version")
    assert_match "1.2.0", output
  end
end