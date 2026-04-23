cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.3.11"

  if Hardware::CPU.arm?
    sha256 "61e63ff8f3f9c12421c265f27e775037d246c2d769aee1994bd9d4ee618a95e0"
  else
    sha256 "9511c009dd53157982a829dbbcaeb74b1a9869c26fe90394798d0d42bb70f994"
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
