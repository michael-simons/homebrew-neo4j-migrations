class Neo4jMigrations < Formula
  desc "Simple, Flyway DB inspired migrations for Neo4j."
  homepage "https://github.com/michael-simons/neo4j-migrations"
  url "https://github.com/michael-simons/neo4j-migrations/releases/download/1.2.1/neo4j-migrations-1.2.1-osx-x86_64.zip"
  version "1.2.1"
  sha256 "625e8fe59aa5ac53b42eaf3898ab9f27a2f02b049c1d1ab8c0fded6918b144c3"
  license "The Apache Software License, Version 2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/neo4j-migrations"
  end

  test do
    output = shell_output("#{bin}/neo4j-migrations --version")
    assert_match "1.2.1", output
  end
end
