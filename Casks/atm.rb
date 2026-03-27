cask "atm" do
  version "1.9.13"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/cubezhao/ai-tools-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "AI Tool Manager - Account management tool for AI Tools"
  homepage "https://github.com/cubezhao/ai-tools-mng"

  sha256 arm:   "eafb40358b04527d5f9bb622c9ee59edb4e7b100ca9fc0094b258347ed132bc4",
         intel: "7ded0662b756856c0bdc31e894f11f6c2cc3586cc6304a6e40bb72100a7a6fa6"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
