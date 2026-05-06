cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.5.28"

  if Hardware::CPU.arm?
    sha256 "98fb8b23a50cfd1b41e96b8719fcadf09a951f1e2eccd8809fb708b249bb9a9d"
  else
    sha256 "d6a8fe8b0880583060dc54bedf4a975bcc1d661516e5389642b8e2bbec5e32b3"
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
