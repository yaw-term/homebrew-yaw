cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.78"

  if Hardware::CPU.arm?
    sha256 "d237f299ab75301b3b9109ca3cf13dd37a4d62e49fd84ba3ba214a4c23b5fe46"
  else
    sha256 "3be09aac90862671be2826a82e00f416fd0da901db375ed65f0982b0523192fc"
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
