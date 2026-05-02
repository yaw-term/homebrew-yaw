cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.5.6"

  if Hardware::CPU.arm?
    sha256 "4e639993cf506a8fc45f5b161a7457ae9190eec4ceccb5dd7d3c44d8cd1c5449"
  else
    sha256 "6382b00d9511c7c3891e41b79c4d8b82fe6e9ac7d0a88130266c6e84378ee513"
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
