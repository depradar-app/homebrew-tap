cask "depradar" do
  version "0.2.0"
  sha256 "4eca3bd9ff7866abb45b39b48e3a97238e56c0dc3124ff7a028d1a265ac9031d"

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
