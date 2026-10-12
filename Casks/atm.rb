cask "atm" do
  version "2.1.8"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/cubezhao/ai-tools-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "AI Tool Manager - Account management tool for AI Tools"
  homepage "https://github.com/cubezhao/ai-tools-mng"

  sha256 arm:   "d1a7ab24ea820e1cb86bec7b4267f50c7012ce079b3ad5b86b0f71c19cfae287",
         intel: "103cc00600daed070ce62c3f0f5b901dfe09e918ba3ce17debf3654db35514f8"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
