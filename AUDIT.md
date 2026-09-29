# Formula Audit

Verification run: **2026-09-11** (branch `chore/token-burn-2026-09-11`)

Method: `curl -sI`/`curl -sL` against public GitHub web endpoints (the GitHub REST API was rate-limited from this environment). All URLs below were checked live; no checksums were invented.

## Result summary

- All **26** release/source asset URLs pinned by the formulae resolve with HTTP 200.
- **tk** repo URLs updated: `semitechnological/telekinesis` is a 301 redirect to the canonical **`tschk/telekinesis`**. Updated `Formula/tk.rb` and `scripts/tk.rb.template` (homepage, `head`, and all four release URLs). SHAs re-verified by downloading each asset — unchanged.
- **unthinkclaw** is stale and the repo has moved. **Not bumped** (see below).
- **rx4** is *newer* than the latest published release — see note on the audit script.

## Per-formula status

| Formula | Pinned | Latest release | Assets | Notes |
| --- | --- | --- | --- | --- |
| `wax` | v0.20.27 | v0.20.27 | OK | |
| `vro` | v1.2.3 | v1.2.3 | OK | |
| `folk-around` | v0.3.5 | v0.3.5 | OK | |
| `poke-around` | v0.6.3 | v0.6.3 | OK | |
| `drift-wallpaper` | v0.1.44 | v0.1.44 | OK | |
| `unthinkclaw` | v0.1.1 | v0.6.2 | OK (old assets) | **STALE**, repo moved to `tschk/apollo` |
| `rs-peekaboo` | v0.3.4 | v0.3.4 | OK | |
| `herdr-gui` | v0.1.11 | v0.1.11 | OK | |
| `rx4` | v0.6.5 | v0.6.3 | OK (v0.6.5 tag exists) | newer than latest release |
| `tk` | v0.5.9 | v0.5.9 | OK | URLs updated to canonical repo |
| `oil` | v0.3.16 | v0.3.16 | OK | |
| `inauguration` | v0.9.6 | v0.9.6 | OK | |

## Open items

### `unthinkclaw` — stale and relocated

- Formula pins **v0.1.1**; public releases go up to **v0.6.2**.
- The repository **`undivisible/unthinkclaw`** now 301-redirects to **`tschk/apollo`** ("openclaw for builders"). The pinned v0.1.1 asset URLs still resolve through the redirect, so the formula still installs, but it ships an old build under a renamed project.
- Not bumped here: a bump requires verifying new asset names/SHAs against `tschk/apollo`, which was out of scope for a safe audit. Recommended follow-up: bump and retest against the canonical repo, or remove the formula.

### `rx4` — audit script false-positive

- `Formula/rx4.rb` pins **v0.6.5**, but `releases/latest` reports **v0.6.3**. The v0.6.5 tag and source tarball both exist and resolve; the newer tags are likely pre-releases.
- `scripts/audit-formulas.sh` compares for **equality** (`version == latest`), so it would flag `rx4` as "stale" even though it is ahead. Consider comparing against the newest *tag*, not the `latest` release, if the script is expected to handle pre-release cadences.

## Tooling notes

- `scripts/audit-formulas.sh` could not be executed here: it requires `ruby` (for `ruby -c`) and an authenticated `gh` CLI; neither was available in this environment. It now has usage docs in `README.md`.
- GitHub REST API was rate-limited (shared IP); all verification used web endpoints instead.