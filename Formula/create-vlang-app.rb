class CreateVlangApp < Formula
  desc "V-native scaffolding CLI for the V programming language"
  homepage "https://github.com/Create-Vlang-App/create-vlang-app"
  url "https://github.com/Create-Vlang-App/create-vlang-app/releases/download/create-vlang-app@0.2.1/create-vlang-app-darwin-aarch64", using: :nounzip
  version "0.2.1"
  sha256 "ada78f0717699583c2bc5c243ca73a4c0ac816a86346162ba94c59cd9dd133bf"
  license "MIT"

  on_intel do
    url "https://github.com/Create-Vlang-App/create-vlang-app/releases/download/create-vlang-app@0.2.1/create-vlang-app-darwin-x86_64", using: :nounzip
    sha256 "5e43c7aafd5c26067651b8c494bc8d63c7e8774675363341b11019cee5c869c0"
  end

  depends_on :macos

  def install
    asset = if Hardware::CPU.arm?
      "create-vlang-app-darwin-aarch64"
    else
      "create-vlang-app-darwin-x86_64"
    end
    chmod 0755, asset
    bin.install asset => "create-vlang-app"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/create-vlang-app --version")
    help = shell_output("#{bin}/create-vlang-app --help")
    assert_includes help, "create-vlang-app"
    assert_includes help, "list-templates"
    assert_includes help, "list-addons"
  end
end
