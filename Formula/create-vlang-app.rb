class CreateVlangApp < Formula
  desc "V-native scaffolding CLI for the V programming language"
  homepage "https://github.com/Create-Vlang-App/create-vlang-app"
  url "https://github.com/Create-Vlang-App/create-vlang-app/archive/refs/tags/create-vlang-app@0.2.0.tar.gz"
  version "0.2.0"
  sha256 "c4230da44b6d2b170846a60e1b1b91b06533f12ac3690499157323381b35613c"
  license "MIT"

  depends_on "git"
  depends_on "vlang"

  def install
    # Homebrew already unpacks the GitHub archive into the build directory.
    system "make", "build"
    bin.install "create-vlang-app"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/create-vlang-app --version")
    help = shell_output("#{bin}/create-vlang-app --help")
    assert_includes help, "create-vlang-app"
    assert_includes help, "list-templates"
    assert_includes help, "list-addons"
  end
end
