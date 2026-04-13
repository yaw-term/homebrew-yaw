cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.712"

  if Hardware::CPU.arm?
    sha256 "64753a537ebf2b49a1fc8db7f553de9f398172d928e822c734c9b6bbb554020d"
  else
    sha256 "860e169163f8cef72e39d89192a02adc43a1c50cce514262568bad85abd829ec"
  end

  url "https://yaw.sh/downloads/yaw-darwin-#{arch}-#{version}.zip"
  name "yaw"
  desc "A modern terminal with built-in connection management and AI assistance"
  homepage "https://yaw.sh"

  app "yaw.app"

  zap trash: [
    "~/Library/Application Support/yaw",
    "~/Library/Preferences/com.yaw.app.plist",
  ]
end
