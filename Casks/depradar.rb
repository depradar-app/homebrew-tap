cask "depradar" do
  version "0.6.0"
  sha256 "1d42a1d74479dd55f6784e47bd2eb475e2b4b72ac9b4ae1b99e60cd3f999278f"

  url "https://github.com/depradar-app/depradar/releases/download/v#{version}/depradar_#{version}_aarch64.dmg"
  name "DepRadar"
  desc "Detects outdated Rust, JavaScript, and Python dependencies, locally or on GitHub"
  homepage "https://github.com/depradar-app/depradar"

  auto_updates true

  app "DepRadar.app"

  zap trash: [
    "~/Library/Application Support/com.sikander.depradar",
    "~/Library/WebKit/com.sikander.depradar",
  ]
end
