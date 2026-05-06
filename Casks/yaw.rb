cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.5.22"

  if Hardware::CPU.arm?
    sha256 "fec308a9155759033a9b5c3321a0c5827c7a42685fca9764882aa4fc6e056b36"
  else
    sha256 "c1f413d4af99d119dec87d239a88a48ccce27e3878c01317cff7981057cf5ef7"
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
