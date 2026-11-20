# Sxnnyside Project Tap

## Purpose
Official Homebrew tap for Sxnnyside Project and Core Red CLI tools.

## Topology
monolithic — Formula/ contains Ruby formulas building CLIs from source.

## Commands
- `brew style Formula/<name>.rb` — check RuboCop style rules for Homebrew formulas
- `brew audit --formula <name>` — audit formula syntax and metadata
- `brew test-bot --only-tap-syntax` — validate entire tap syntax
- `brew install --build-from-source Formula/<name>.rb` — test building a formula locally
- `brew test Formula/<name>.rb` — execute the formula test block

## Where things go
| What | Where |
|---|---|
| Formula definitions | `Formula/<name>.rb` |
| Workflows | `.github/workflows/` |
| Documentation | `README.md`, `docs/` |

## Conventions
- Source of truth only: formulas build from tagged source tarballs, never prebuilt binaries or bottles.
- Every formula requires `desc`, `homepage`, `url`, `sha256`, `license`, `head`, `depends_on ... => :build`, and a `test do` block asserting `--version`.
- Formula files are snake_case (`lacuna-cli.rb`, `animoria.rb`, `debuggatha.rb`).
- Never edit `url`/`sha256` manually for release bumps; autobump workflow handles routine bumps.

## Do not
- Do not add bottles or prebuilt binary URLs to formulas.
- Do not introduce network calls during the formula build step.
