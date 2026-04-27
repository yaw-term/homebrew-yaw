cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.3.25"

  if Hardware::CPU.arm?
    sha256 "a7184fab15923cc91204cd9a34e2fb82ba8053bb23ff89ea4b951841c5657182"
  else
    sha256 "12a5754922cbf438c448097db5172d10e10434d6253aca8bd6c2e39f2027d6f2"
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
