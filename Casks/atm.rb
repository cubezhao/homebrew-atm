cask "atm" do
  version "2.1.2"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/cubezhao/ai-tools-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "AI Tool Manager - Account management tool for AI Tools"
  homepage "https://github.com/cubezhao/ai-tools-mng"

  sha256 arm:   "ce1a085ec76ec690788e92d0585b2033c5b52497a2c577e8b7664cf282f67b1b",
         intel: "bdf6dd25a7abac60f5e17de02901946c4a36cf07f9f2562cbd944c7bf104b398"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
