cask "depradar" do
  version "0.3.0"
  sha256 "195b82d90abcf71f5f3664863618e245dea0001d9aac50a290913a06b1148f80"

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
