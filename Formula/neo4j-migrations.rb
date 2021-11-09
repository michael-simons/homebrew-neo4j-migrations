class Neo4jMigrations < Formula
  desc "Simple, Flyway DB inspired migrations for Neo4j."
  homepage "https://github.com/michael-simons/neo4j-migrations"
  version "1.0.0"
  url "https://github.com/michael-simons/neo4j-migrations/releases/download/1.0.0/neo4j-migrations-1.0.0-osx-x86_64.zip"
  sha256 "616773655f2a76f48c12aca6ae7cb4ccdbeb9014a751af42a1d88cfc7cddc6da"
  license "The Apache Software License, Version 2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/neo4j-migrations"
  end

  test do
    output = shell_output("#{bin}/neo4j-migrations --version")
    assert_match "1.0.0", output
  end
end