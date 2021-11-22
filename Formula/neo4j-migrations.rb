class Neo4jMigrations < Formula
  desc "Simple, Flyway DB inspired migrations for Neo4j."
  homepage "https://github.com/michael-simons/neo4j-migrations"
  version "1.1.0"
  url "https://github.com/michael-simons/neo4j-migrations/releases/download/1.1.0/neo4j-migrations-1.1.0-osx-x86_64.zip"
  sha256 "24a28969e2a97238770a225197373e2a83d11f332f4c85812148f59276ababee"
  license "The Apache Software License, Version 2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/neo4j-migrations"
  end

  test do
    output = shell_output("#{bin}/neo4j-migrations --version")
    assert_match "1.1.0", output
  end
end