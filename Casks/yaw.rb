cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.3.8"

  if Hardware::CPU.arm?
    sha256 "029bd23b4e9140624b168bde58bc8ef60246f9a52f5de9d263d0c1b9e3fc5316"
  else
    sha256 "d91bc30418cc20fc22b6443ff8fdcc8dc3154f799d091ddff461d62727099f14"
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
