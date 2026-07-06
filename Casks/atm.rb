cask "atm" do
  version "2.1.0"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/cubezhao/ai-tools-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "AI Tool Manager - Account management tool for AI Tools"
  homepage "https://github.com/cubezhao/ai-tools-mng"

  sha256 arm:   "688a2b9546a4e0d181075dddc2aa24cc9d5bd19b9784dad1cc7ab851ae2849c0",
         intel: "2128faa724a2ac1e77f6701d3cdf705f42f5b816f46e99435bf0467416673e10"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
