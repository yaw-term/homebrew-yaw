cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.5.20"

  if Hardware::CPU.arm?
    sha256 "56d1880f8c3ad32f95d788f2d542ccd024747b20a65193ba1b470447913726bc"
  else
    sha256 "e30032667215926025dae93fc5fed45bd067f649727c181f9189127c257631dd"
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
