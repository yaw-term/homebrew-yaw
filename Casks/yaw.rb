cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.5.25"

  if Hardware::CPU.arm?
    sha256 "593935a4c45078cd5d5cd8b0ed5cfa7ad30bf813597c60ed6e3398a647393064"
  else
    sha256 "16c512e728e47c5b33aebd9ec31db74b127e330be701552f54f2bc935277a4e4"
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
