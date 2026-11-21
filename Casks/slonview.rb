cask "slonview" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "5823f500d9a52da97816e1a10b0b9fabda22b814ad44ed73b87ae1539be5179e",
         intel: "a665c210ca84340e9267a8d6100b45fdd2a27c438b0d79c8d4b4ae807f653d3a"

  url "https://github.com/tomasdewantoro/slonview/releases/download/v#{version}/Slonview_#{version}_#{arch}.dmg"
  name "Slonview"
  desc "Small read-only-by-default viewer for PostgreSQL"
  homepage "https://slonview.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Slonview.app"

  zap trash: [
    "~/Library/Application Support/io.github.tomasdewantoro.slonview",
    "~/Library/Application Support/slonview",
    "~/Library/Caches/io.github.tomasdewantoro.slonview",
    "~/Library/WebKit/io.github.tomasdewantoro.slonview",
  ]
end
