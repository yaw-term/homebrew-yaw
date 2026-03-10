cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.88"

  if Hardware::CPU.arm?
    sha256 "6556c5f6ecdd90522409a55ead12ebe02c918885866a7ddc17a7272784fecb8b"
  else
    sha256 "f9638aa63772f81706ecacc9d4c83117b4683c6b5c1eca882fe49d9517d77710"
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
