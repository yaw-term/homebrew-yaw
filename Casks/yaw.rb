cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.3.10"

  if Hardware::CPU.arm?
    sha256 "ccaace8a5c1446d5e043ed420fc92c12feb7cb1c8a92fcece252ea2d21a2f7ca"
  else
    sha256 "8be86ffb9b5f8c6b7a42a7da6c8e3b6c419215955742960918d354b5610094a0"
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
