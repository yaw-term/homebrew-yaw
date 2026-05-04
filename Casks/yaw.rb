cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.5.18"

  if Hardware::CPU.arm?
    sha256 "9c254a6e171be59b1c37fc0d7540e87f95afafc7680d94ae197a4b64f1b88286"
  else
    sha256 "e5a5c298a52a160403c8eaa9f286055bd92d96ba7920355da057e2917c178a42"
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
