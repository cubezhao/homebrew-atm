cask "atm" do
  version "1.9.9"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/cubezhao/augment-token-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "Augment Token Manager - Token management tool for Augment Code"
  homepage "https://github.com/cubezhao/augment-token-mng"

  sha256 arm:   "0db4f2b741b7bd03f1b3c26c7142ab4b18572601ce55aec0b39dd70b79876e38",
         intel: "a7707895e0b8a53fceca9ce81f5d579d56b190da574b8ffb4cb86d8a71f9984c"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
