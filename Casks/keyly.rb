cask "keyly" do
  version "1.10.0"
  sha256 "b55d0bea7fcf8f7ea919ae85d0fd9baaa90bb182c2a371da7767a975a1f6e104"

  url "https://github.com/hoaiphongdev/keyly/releases/download/keyly-#{version}/Keyly.dmg"
  name "Keyly"
  desc "Shows every keyboard shortcut of the active app"
  homepage "https://keyly-docs.com/"

  livecheck do
    url :url
    regex(/^keyly[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Keyly.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Keyly.app"]
  end

  uninstall quit: "com.keyly.app"

  zap trash: [
    "~/.config/keyly",
    "~/Library/Caches/com.keyly.app",
    "~/Library/Caches/com.keyly.app.sparkle",
    "~/Library/HTTPStorages/com.keyly.app",
    "~/Library/HTTPStorages/com.keyly.app.binarycookies",
    "~/Library/Preferences/com.keyly.app.plist",
  ]

  caveats <<~EOS
    Open Keyly and allow Accessibility when asked
    (System Settings → Privacy & Security → Accessibility → Keyly).
    Then double-tap Caps Lock. Keyly updates itself.
  EOS
end
