# dmcphearson/tap

Homebrew formulae and casks.

Homebrew 7 only loads third-party taps you have trusted, so trust this one first.

```sh
brew trust dmcphearson/tap
brew install dmcphearson/tap/roost
brew install --cask dmcphearson/tap/gateway
```

| Formula | What it is |
|---|---|
| [roost](Formula/roost.rb) | [Agent Roost](https://github.com/dmcphearson/agent-roost): a terminal session manager for Claude Code |

| Cask | What it is |
|---|---|
| [gateway](Casks/gateway.rb) | [Gateway](https://github.com/dmcphearson/gateway): a menu bar app that keeps AWS SSO sessions and tokens fresh |
