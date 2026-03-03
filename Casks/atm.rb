cask "atm" do
  version "1.9.3"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/cubezhao/augment-token-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "Augment Token Manager - Token management tool for Augment Code"
  homepage "https://github.com/cubezhao/augment-token-mng"

  sha256 arm:   "66e0c22bf646e2ed255c6ee81ed305c56d18c343a933b3581c839cddb2da5f18",
         intel: "77d047fe37a395b2039de621886b3900278b806a4d40782261b489c33040ba3d"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
