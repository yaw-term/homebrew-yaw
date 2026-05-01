cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.5.3"

  if Hardware::CPU.arm?
    sha256 "20ce20d9efdb8fb7459e58ec52d3b8cd333ab40275d983f1e2a00d102af7334c"
  else
    sha256 "4d8ab2a204dbbe4260ab4206cd7d151f42430e10d4ebf347567002b8077287a1"
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
