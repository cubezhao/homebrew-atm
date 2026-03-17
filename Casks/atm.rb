cask "atm" do
  version "1.9.10"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/cubezhao/augment-token-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "Augment Token Manager - Token management tool for Augment Code"
  homepage "https://github.com/cubezhao/augment-token-mng"

  sha256 arm:   "cf65c3c068e587d040dc662126417b51fedc7caadcd03cbf1719bea086cde0de",
         intel: "4c793a831b898ef1581b8d0f7b82d07cc0a20114607456ff432c4638c9f501b1"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
