class Dbxcli < Formula
  homepage "https://github.com/dropbox/dbxcli"

  if OS.mac?
    @@os = "darwin"
    checksum = "$sha256_darwin"
  elsif OS.linux?
    @@os = "linux"
    checksum = "$sha256_linux"
  end

  url "https://github.com/dropbox/dbxcli/releases/download/$version/dbxcli-#{@@os}-amd64"
  sha256 checksum

  def install
    mv "dbxcli-#{@@os}-amd64", "dbxcli"
    bin.install "dbxcli"
  end

  test do
    system "#{bin}/dbxcli", "--help"
  end
end