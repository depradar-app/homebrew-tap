cask "depradar" do
  version "0.5.0"
  sha256 "00226e6cfbb1692f4607dbcdaea1eec4aa2bc559cdd646827e1cac68eacca63f"

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
