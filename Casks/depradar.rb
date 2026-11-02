cask "depradar" do
  version "1.0.0"
  sha256 "1a51cf4b8478109082095da6ab9d9f506a3e76b0e44c13fc47d45f51ebdcb712"

  url "https://github.com/depradar-app/depradar/releases/download/v#{version}/DepRadar_#{version}_universal.dmg"
  name "DepRadar"
  desc "Detects outdated and vulnerable dependencies in local projects and GitHub repositories"
  homepage "https://github.com/depradar-app/depradar"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "DepRadar.app"

  zap trash: [
    "~/Library/Application Support/com.sikander.depradar",
    "~/Library/Caches/com.sikander.depradar",
    "~/Library/Saved Application State/com.sikander.depradar.savedState",
    "~/Library/WebKit/com.sikander.depradar",
  ]
end
