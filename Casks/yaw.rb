cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.4.26"

  if Hardware::CPU.arm?
    sha256 "05272664086e8ad8838ee663382f8ba9e1a09d0d81359f2ee6e92b146d692d91"
  else
    sha256 "ecad3fcf7d6b45edc04c5730bfd3c4c80439bed9a7c1a9703ce7920a46e40c8f"
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
