cask "slonview" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "57c4dc9bbaa97c3db65f00892fc756710c67244ba16ac4c319764cd6a7a9e352",
         intel: "23ace8912db3501b1bc00987b39a7d37cd1ecb9168a6c8eceb2075370bdaa5c0"

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
