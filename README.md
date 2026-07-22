# Create-Vlang-App Homebrew Tap

Homebrew formula for [create-vlang-app](https://github.com/Create-Vlang-App/create-vlang-app).

Primary install path for V developers is **VPM**:

```bash
v install create-vlang-app
```

Homebrew is a secondary channel for macOS/Linux users.

## Install

```bash
brew tap Create-Vlang-App/tap
brew install create-vlang-app
```

## Usage

```bash
create-vlang-app my-app --template web-server --no-interactive
# or after VPM:
v install create-vlang-app
create-vlang-app my-app
```

## Update

```bash
brew upgrade create-vlang-app
```

## Automated updates (`repository_dispatch`)

When [`create-vlang-app` Release](https://github.com/Create-Vlang-App/create-vlang-app/actions/workflows/publish.yml)
succeeds for tag `create-vlang-app@X.Y.Z`, [`notify-homebrew.yml`](https://github.com/Create-Vlang-App/create-vlang-app/blob/main/.github/workflows/notify-homebrew.yml)
waits for the GitHub Release tarball, then sends:

```json
{
  "event_type": "new-release",
  "client_payload": { "version": "X.Y.Z" }
}
```

This repository's [`update-formula.yml`](.github/workflows/update-formula.yml) handles that event (and
manual `workflow_dispatch`) by patching `Formula/create-vlang-app.rb` url/sha256/version and committing.

Manual bump:

```bash
gh workflow run "Update formula" --repo Create-Vlang-App/homebrew-tap -f version=0.0.1
```

## Available formulae

| Formula | Description |
|---------|-------------|
| `create-vlang-app` | V-native scaffolding CLI for the V programming language |

---

> **Other install methods:** [VPM / GitHub](https://github.com/Create-Vlang-App/create-vlang-app) · [AUR](https://aur.archlinux.org/packages/create-vlang-app) · [Docker](https://hub.docker.com/r/ulisesjeremias/create-vlang-app) (optional)

## Contributors

<a href="https://github.com/Create-Vlang-App/homebrew-tap/contributors">
  <img src="https://contrib.rocks/image?repo=Create-Vlang-App/homebrew-tap"/>
</a>

Made with [contributors-img](https://contrib.rocks).
