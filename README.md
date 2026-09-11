# Sxnnyside Project Tap

![License](https://img.shields.io/badge/License-MIT-green)
[![CI](https://github.com/sxnnyside-project/homebrew-tap/workflows/brew%20test-bot/badge.svg)](https://github.com/sxnnyside-project/homebrew-tap/actions)

<p align="center">
  <strong>Multi-language ✦ Build-from-source ✦ Sxnnyside Project</strong><br>
  <em>Official Homebrew tap for Sxnnyside Project CLIs.</em>
</p>

<p align="center">
  <a href="#about">About</a> ✦
  <a href="#features">Features</a> ✦
  <a href="#installation">Installation</a> ✦
  <a href="#usage">Usage</a> ✦
  <a href="#architecture">Architecture</a> ✦
  <a href="#contributing">Contributing</a>
</p>

---

## About

**Sxnnyside Project Tap** is the Homebrew tap that distributes the CLI tools published across the Sxnnyside Project ecosystem.

Each CLI lives in its own repository with its own release cycle; this tap is the single, agnostic entry point to install any of them via `brew`, regardless of which realm or sub-project they come from.

Formulas build from source (`cargo`/`cmake`, etc.) unless a project explicitly ships prebuilt bottles, so installs are reproducible from the upstream repository's tagged source rather than a separately maintained binary.

### Philosophy

> *"One tap, every Sxnnyside Project CLI — no forks, no mirrors, source of truth only."*

This tap currently distributes CLIs from the Core Red Project, published under the Sxnnyside Project organization. As other realms publish CLIs, they land here too.

## Features

- **orph-cli**: Zero-dependency CLI for reliable workflows on offline Raspberry Pi environments.
- **lacuna-cli**: Minimalist CLI data compression suite built in pure C++20.
- **psychoquine-cli**: Meta-programming engine that generates quines across 18 languages.
- **somnia-cli**: Zero-allocation procedural audio generator CLI for desktop & AVR.
- **tensorsuggestlite-cli**: Configuration-driven text classification models with TensorFlow/Keras and TFLite export.

## Installation

### Prerequisites

- Homebrew (macOS or Linux)

### From the tap

```bash
brew tap sxnnyside-project/tap
brew install <formula>
```

Or install a formula directly without tapping first:

```bash
brew install sxnnyside-project/tap/<formula>
```

## Usage

```bash
brew tap sxnnyside-project/tap
brew install orph-cli
orph --help
```

## Architecture

```
homebrew-tap/
├── Formula/    # one .rb formula per CLI
├── scripts/    # release/build helper scripts
└── docs/       # tap documentation
```

## Contributing

Contributions are accepted. See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

Before contributing, read the [Code of Conduct](CODE_OF_CONDUCT.md).

## License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.

---

<p align="center">
  <strong>Sxnnyside Project Tap</strong> — Sxnnyside Project<br>
  <em>&copy; 2026 Sxnnyside Project</em>
</p>
