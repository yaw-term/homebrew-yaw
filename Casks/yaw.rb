cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.3.1"

  if Hardware::CPU.arm?
    sha256 "8a41d33eed38c430914be51a839db74a975c170c013d288f3bb8988831d65f24"
  else
    sha256 "b46c276389ed4011f0f8108201f66ab89b5baba3dee5203e37f1e383a7a93752"
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
