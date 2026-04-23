cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.3.9"

  if Hardware::CPU.arm?
    sha256 "d049acf3a03e68645f718256da17082a13f7dfd171e0f93382e61cc3036bd268"
  else
    sha256 "d5c7cee4e2d020865ff2a219df13522648d3cacd0d5956f06461d91585913658"
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
