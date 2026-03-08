cask "atm" do
  version "1.9.5"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/cubezhao/augment-token-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "Augment Token Manager - Token management tool for Augment Code"
  homepage "https://github.com/cubezhao/augment-token-mng"

  sha256 arm:   "f7f21423fc0b64b4e922f3f23dbc34cbc95ce9e9a47e7d761691def39fc3e4a6",
         intel: "49dd942af8815a613020dcb4eca3c5be2cbc4bdeab849a5923b739ff6289d45a"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
