class CreateVlangApp < Formula
  desc "V-native scaffolding CLI for the V programming language"
  homepage "https://github.com/Create-Vlang-App/create-vlang-app"
  url "https://github.com/Create-Vlang-App/create-vlang-app/archive/refs/tags/create-vlang-app@0.2.1.tar.gz"
  version "0.2.1"
  sha256 "afb1cbc1221f275ad205018eb32b46d7e41b5183f6a1d3cb1adffee42197d9b5"
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
