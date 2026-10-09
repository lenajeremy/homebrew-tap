# Homebrew tap for Ribbon

[Ribbon](https://github.com/lenajeremy/ribbon) is a free, open-source AI time tracker for Mac.

```sh
brew install --cask lenajeremy/tap/ribbon
```

Ribbon updates itself, so you don't need `brew upgrade` for it. To remove Ribbon and everything it has tracked:

```sh
brew uninstall --zap ribbon
```

This removes your timeline and settings from `~/Library`. Your OpenAI API key stays in your keychain under "Ribbon".
