cask "depradar" do
  version "0.4.0"
  sha256 "ed0a2040edb33dd6dbde5abba3d127cf07fcac1eca8f1f4a669235fd7f8975da"

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
