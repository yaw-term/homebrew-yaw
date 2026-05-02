cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.5.5"

  if Hardware::CPU.arm?
    sha256 "6989e768ce2a0e4da86cabaf78bcef28e5a1e8223c18a5e33a8bad752789d03e"
  else
    sha256 "4c9e18e332a60b69a9db4c78b0dbca16b46d3c9bee2a42c3d35ff8b876397038"
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
