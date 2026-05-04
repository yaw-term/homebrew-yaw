cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.5.12"

  if Hardware::CPU.arm?
    sha256 "3fe387e513237e01de99bfb54284c0484d24a1e711de50749b5138bc9ddabd4e"
  else
    sha256 "5dd896eb27608ab7757cec561734656dd264395421c63b21c1e304d0b41e4780"
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
