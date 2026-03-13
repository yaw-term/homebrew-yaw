cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.100"

  if Hardware::CPU.arm?
    sha256 "7d07d55a610b9bc4bf018e0b930f2b8d6553ea967434f9f0f6e7335237aa7f78"
  else
    sha256 "b15a3e7a7bc5d80dc13acafdd6e56e38f3359a350c30b33e5f1f960fa4345f4b"
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
