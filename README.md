# Create-Vlang-App Homebrew Tap

[![Release](https://img.shields.io/github/v/release/Create-Vlang-App/create-vlang-app?filter=create-vlang-app%40*&style=flat-square&label=Release)](https://github.com/Create-Vlang-App/create-vlang-app/releases/tag/create-vlang-app%400.1.0)
[![Website](https://img.shields.io/badge/site-create--awesome--vlang--app.vercel.app-8B5CF6?style=flat-square)](https://create-awesome-vlang-app.vercel.app)
[![Discord](https://img.shields.io/discord/1527933660764831825?label=Discord&logo=discord&logoColor=white)](https://discord.gg/bR5VyATgka)

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

Browse templates and extensions: **[create-awesome-vlang-app.vercel.app](https://create-awesome-vlang-app.vercel.app)**

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
