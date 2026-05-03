cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.5.10"

  if Hardware::CPU.arm?
    sha256 "fa8d8f8f3b1985b6fc2ea24d3325118fede09266039dc6b8fd426092d68f00df"
  else
    sha256 "b7149caa7469bc1aa3b0f9704fdea54b5a66238d78892bbadbb5fe2250e85d17"
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
