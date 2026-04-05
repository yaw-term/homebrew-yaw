cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.143"

  if Hardware::CPU.arm?
    sha256 "f64fb451c4b733a98211164d2e6697d1a9b12067dd148ee6fc1080ff405cad03"
  else
    sha256 "164e6428d8f0410ccbe5694b1fc5fe2538e43ba9cf0d669f4d88aba546cf091b"
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
