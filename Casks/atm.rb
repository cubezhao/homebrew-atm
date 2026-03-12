cask "atm" do
  version "1.9.7"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/cubezhao/augment-token-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "Augment Token Manager - Token management tool for Augment Code"
  homepage "https://github.com/cubezhao/augment-token-mng"

  sha256 arm:   "18994f47e768e284efccf90bcd19048fd7ea9b0f534d966f0aeba318fecc54fa",
         intel: "b5217b965bcb77c59cc7d997f78ed333f41f98b589308e01649238ab048bbda9"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
