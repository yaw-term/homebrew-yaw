cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.4.24"

  if Hardware::CPU.arm?
    sha256 "07855e71bbab789a62eb9d3dc4ebda5d048b8deb665a45092f21f752f419fe09"
  else
    sha256 "78f403a341b7a15fa1ffb9c12f3f91fd7bcbdb63fd47d59811f977c1a76a0274"
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
