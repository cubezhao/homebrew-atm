cask "atm" do
  version "1.9.4"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/cubezhao/augment-token-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "Augment Token Manager - Token management tool for Augment Code"
  homepage "https://github.com/cubezhao/augment-token-mng"

  sha256 arm:   "68ed97e59c1200de1d7432b0a3d61588673f9059b6bc5f6db4af8c50ff4b9ac1",
         intel: "da7156d88427825f068ad25671d95755ba3fa1921fc31380688b619a3b893671"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
