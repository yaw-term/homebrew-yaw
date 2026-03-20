cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.109"

  if Hardware::CPU.arm?
    sha256 "b61e1fadedb3c85ac324ac08989f11460957d1c1b40655424fd365d6837703b4"
  else
    sha256 "79e81d6e6c586674bd892b33d9ecedf729383ab292151cb8bf98cd676c2c7a47"
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
