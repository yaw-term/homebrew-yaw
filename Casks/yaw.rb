cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.108"

  if Hardware::CPU.arm?
    sha256 "c8bff1daa524dca19ebb08fc66f4d3d5bc1835d048366adb1c0a331cb0732807"
  else
    sha256 "ae946942ed117271818cdfaab395cdd11525f60a52d118aca9b191a9c3eb7d02"
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
