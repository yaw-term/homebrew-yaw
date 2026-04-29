cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.4.28"

  if Hardware::CPU.arm?
    sha256 "137b13797bdabbef8ff3a993ae02c81b23fd34bf88c32b87fe7a5204e969ffd7"
  else
    sha256 "08a24c320b6afff6341d0169bdd7f51a69f902cd3b5d10a85d1b01bcd5abf7f5"
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
