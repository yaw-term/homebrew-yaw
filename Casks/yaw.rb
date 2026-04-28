cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.4.25"

  if Hardware::CPU.arm?
    sha256 "0241317f8218e0694809aa3136090e91ee33bd81f65891f395e488a1d2641089"
  else
    sha256 "659746bc02d36a0e5f7ff8f568c8eadd8cd93b89129ac228231c0fe674b42cf2"
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
