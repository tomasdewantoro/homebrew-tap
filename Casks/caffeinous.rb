cask "caffeinous" do
  version "0.1.0"
  sha256 "59c22f9eeaeaaf1b72152549b544175f8b5662356b85dc745546667e1e33be03"

  url "https://github.com/tomasdewantoro/caffeinous/releases/download/v#{version}/Caffeinous_#{version}_universal.dmg"
  name "Caffeinous"
  desc "Menu bar app that keeps the computer awake, even with the lid closed"
  homepage "https://github.com/tomasdewantoro/caffeinous"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Caffeinous.app"

  uninstall quit: "io.github.tomasdewantoro.caffeinous"

  zap trash: [
    "~/Library/Application Support/io.github.tomasdewantoro.caffeinous",
    "~/Library/Preferences/io.github.tomasdewantoro.caffeinous.plist",
  ]
end
