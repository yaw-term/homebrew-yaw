cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.5.7"

  if Hardware::CPU.arm?
    sha256 "3095415f88da6017d5b3f783f371c36db85bc3d50bcc13dd8f10e9ff929e1e0b"
  else
    sha256 "65f615a9f785ae309da0558bd13b482e0546a0f9211a496f566694e79195a903"
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
