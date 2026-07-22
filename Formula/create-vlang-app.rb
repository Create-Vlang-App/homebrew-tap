class CreateVlangApp < Formula
  desc "V-native scaffolding CLI for the V programming language"
  homepage "https://github.com/Create-Vlang-App/create-vlang-app"
  url "https://github.com/Create-Vlang-App/create-vlang-app/archive/e5c07f5.tar.gz"
  version "0.0.1"
  sha256 "2db15ba3f4992eb5dcf1dffbd5a26826e433a77523fb102c6e47d7c3d965d1de"
  license "MIT"

  depends_on "vlang"
  depends_on "git"

  def install
    cd "create-vlang-app-e5c07f5" do
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
