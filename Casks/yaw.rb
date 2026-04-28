cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.4.22"

  if Hardware::CPU.arm?
    sha256 "0b8fb1a8b0fc18a6e88c86b04a3a396c25106d6669bd196bf65b0a631ef31e5e"
  else
    sha256 "5299a720e0f4f2e858e22d826dcecd6857b9f6b0368360ef86e51676c75e9ed8"
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
