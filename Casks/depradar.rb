cask "depradar" do
  version "1.0.1"
  sha256 "7e58b498760d2e7bd26e14f8ff0eb96249e13f2ba7d536f11878647b96f8d7a3"

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
