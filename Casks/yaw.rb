cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.6.1"

  if Hardware::CPU.arm?
    sha256 "3234b4112ad15f41945e12b5437ae2a54c9952f995117504f67371fa8bbc4c31"
  else
    sha256 "be7fe7b13a5cfc4329138c1d4922bb68eb7e782afc469290be423396affd496e"
  end

  url "https://downloads.yaw.sh/yaw-darwin-#{arch}-#{version}.zip"
  name "yaw"
  desc "A modern terminal with built-in connection management and AI assistance"
  homepage "https://yaw.sh"

  app "yaw.app"

  zap trash: [
    "~/Library/Application Support/yaw",
    "~/Library/Preferences/com.yaw.app.plist",
  ]
end
