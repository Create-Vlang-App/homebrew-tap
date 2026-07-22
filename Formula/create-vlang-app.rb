class CreateVlangApp < Formula
  desc "V-native scaffolding CLI for the V programming language"
  homepage "https://github.com/Create-Vlang-App/create-vlang-app"
  url "https://github.com/Create-Vlang-App/create-vlang-app/archive/refs/tags/create-vlang-app@0.1.0.tar.gz"
  version "0.1.0"
  sha256 "f7c1f62f8eab3bcd4e55b05700924c864f182247ff7c050c39884f5013592729"
  license "MIT"

  depends_on "vlang"
  depends_on "git"

  def install
    cd "create-vlang-app-create-vlang-app-0.1.0" do
      system "make", "build"
      bin.install "create-vlang-app"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/create-vlang-app --version")
    help = shell_output("#{bin}/create-vlang-app --help")
    assert_includes help, "create-vlang-app"
    assert_includes help, "list-templates"
    assert_includes help, "list-addons"
  end
end
