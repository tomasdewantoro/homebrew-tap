cask "slonview" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "b48ca94e5fe2e10cfb3a46af7324c0548d7fd9d59249d752aa1f49634fff00da",
         intel: "dfafede6ab1cf33b783c468a9c159515c693e541ad101705ae95ef74027bfd8e"

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
