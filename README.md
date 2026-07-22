# Create-Vlang-App Homebrew Tap

Homebrew formula for [create-vlang-app](https://github.com/Create-Vlang-App/create-vlang-app).

Pinned to tag [`create-vlang-app@0.1.0`](https://github.com/Create-Vlang-App/create-vlang-app/releases/tag/create-vlang-app%400.1.0).

## Install

```bash
brew tap Create-Vlang-App/tap
brew install create-vlang-app
```

## Usage

```bash
create-vlang-app my-app --template web-server --addons github-setup
```

## Other channels

| Channel | How |
|---------|-----|
| GitHub Release | [linux amd64 binary](https://github.com/Create-Vlang-App/create-vlang-app/releases/tag/create-vlang-app%400.1.0) |
| AUR | `yay -S create-vlang-app` |
| Source | Build from [create-vlang-app](https://github.com/Create-Vlang-App/create-vlang-app) |

## Automated updates

Release tags `create-vlang-app@X.Y.Z` trigger formula bumps via `repository_dispatch` from the CLI repo. Manual:

```bash
gh workflow run "Update formula" --repo Create-Vlang-App/homebrew-tap -f version=0.1.0
```

## Formulae

| Formula | Description |
|---------|-------------|
| `create-vlang-app` | V-native scaffolding CLI |

## Contributors

<a href="https://github.com/Create-Vlang-App/homebrew-tap/contributors">
  <img src="https://contrib.rocks/image?repo=Create-Vlang-App/homebrew-tap" alt="contrib.rocks"/>
</a>
