cask "atm" do
  version "2.1.9"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/cubezhao/ai-tools-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "AI Tool Manager - Account management tool for AI Tools"
  homepage "https://github.com/cubezhao/ai-tools-mng"

  sha256 arm:   "a5c1036d266426347054d3f33f5c94f5e2e23295ebae17ea27360a8452fb0c85",
         intel: "66e75f0050c47ae94cde0bbe1a54f18a6e53faa12e0b776c2e36171f6269d971"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
