cask "slonview" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "fc8c468e8f97d0b53e97abad7bffd490ed0231dd7db1a020d045d11467a2029e",
         intel: "c5ce35802a0b3ea30f567d63bf21d726a339fabf87d04b71796ac88bb0d91031"

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
