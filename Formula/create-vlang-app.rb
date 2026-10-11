class CreateVlangApp < Formula
  desc "V-native scaffolding CLI for the V programming language"
  homepage "https://github.com/Create-Vlang-App/create-vlang-app"
  version "0.2.3"
  license "MIT"
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/Create-Vlang-App/create-vlang-app/releases/download/create-vlang-app@0.2.3/create-vlang-app-darwin-aarch64", using: :nounzip
      sha256 "75b7fb1147afcb62b84e548cb9ada542a263b39b3310de0e5f86d2b9cbd17f2f"
    end

    on_intel do
      url "https://github.com/Create-Vlang-App/create-vlang-app/releases/download/create-vlang-app@0.2.3/create-vlang-app-darwin-x86_64", using: :nounzip
      sha256 "dc2b93f1f31541ef5c00f5e1497630a11fb0e6058742667d0d3a514031dc2310"
    end
  end

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
