cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.3.19"

  if Hardware::CPU.arm?
    sha256 "aec8496d213718fc9ec3bfa3d01803555bf0db0f8a1100f2eb20f72add4819e9"
  else
    sha256 "ab1777adfaa5155047faa6bd3adbb5714a139759afb6069ed772dead19c9bd68"
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
