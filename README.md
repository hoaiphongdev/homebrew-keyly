# Homebrew tap for Keyly

[Keyly](https://github.com/hoaiphongdev/keyly) shows every keyboard shortcut of the app in front of you. Double-tap Caps Lock to see them.

## Install

```bash
brew install --cask hoaiphongdev/keyly/keyly
```

Open Keyly and allow **Accessibility** when asked (System Settings → Privacy & Security → Accessibility → Keyly). You only do this once. Your permission stays after updates.

Already installed Keyly with the `curl` command? Run this instead, so Homebrew takes over the app you already have:

```bash
brew install --cask --adopt hoaiphongdev/keyly/keyly
```

## Updates

Keyly updates itself: when a new version is out, the menu bar icon shows a red dot and one click installs it.

To update through Homebrew instead:

```bash
brew upgrade --cask --greedy keyly
```

## Uninstall

```bash
brew uninstall --cask keyly          # remove the app
brew uninstall --cask --zap keyly    # also remove your settings and custom shortcuts
```
