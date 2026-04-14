cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.920"

  if Hardware::CPU.arm?
    sha256 "88c6c463eeaa2131500ff4226e13ab18431416671702de6fb6d37acf9f34a3ec"
  else
    sha256 "3a5fab01e4be4a830da9073eaaa8d45230c7b9e9f697165afa081b9a534a9207"
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
