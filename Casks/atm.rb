cask "atm" do
  version "1.9.21"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/cubezhao/ai-tools-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "AI Tool Manager - Account management tool for AI Tools"
  homepage "https://github.com/cubezhao/ai-tools-mng"

  sha256 arm:   "0c19c12608c9a52e0bf1792934b2ee1d8673712f1cc6c61c3aa305e0baf9c4dd",
         intel: "e6239ed46c8eace72ef3611c8cd42d299ea8bd4f9734c37707c3714f993674ea"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
