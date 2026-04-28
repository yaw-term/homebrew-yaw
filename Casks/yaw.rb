cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.4.21"

  if Hardware::CPU.arm?
    sha256 "e2b5bba206b87bf5e357ce53a9f00f5432b703d84f85e398983f60fac464e63d"
  else
    sha256 "92ca539d8ad2c0de42e6c75c8f057ed9ce7c963963ff4bf7bef1aa779bb6e5ed"
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
