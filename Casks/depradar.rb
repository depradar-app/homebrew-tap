cask "depradar" do
  version "0.6.1"
  sha256 "10241626af69a8d5d3403a90b68aff49579f840953527e8ab2f91d0905e57ab6"

  # v0.6.1 is an Apple Silicon-only build whose bundle is named `depradar.app`.
  # Starting with the next release the workflow regenerates this file for the
  # universal build (`DepRadar.app`).
  url "https://github.com/depradar-app/depradar/releases/download/v#{version}/depradar_#{version}_aarch64.dmg"
  name "DepRadar"
  desc "Detects outdated and vulnerable dependencies in local projects and GitHub repositories"
  homepage "https://github.com/depradar-app/depradar"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :high_sierra"

  app "depradar.app"

  zap trash: [
    "~/Library/Application Support/com.sikander.depradar",
    "~/Library/Caches/com.sikander.depradar",
    "~/Library/Saved Application State/com.sikander.depradar.savedState",
    "~/Library/WebKit/com.sikander.depradar",
  ]
end
