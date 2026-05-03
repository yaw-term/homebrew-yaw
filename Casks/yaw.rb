cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.5.11"

  if Hardware::CPU.arm?
    sha256 "b836a9162dbc7bca3de1d57cdb06e564f0577bd771c35ee729455cade5e9176b"
  else
    sha256 "43c62c3fc5923dd5f9b087abeadaf0104c455b4e995dc402633d08153ac620eb"
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
