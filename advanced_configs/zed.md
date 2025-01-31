# Zed editor

https://zed.dev/

## Install

### Mac

```sh
brew install zed
```

### Windows

```sh
scoop install zed
```

## Config location

- Linux and Mac: `~/.config/zed/settings.json`
- Windows: `%AppData%\Zed\settings.json`

You can open the config directly from Zed with `Ctrl + ,` (comma)

## Autosave

By default Zed doesn't autosave, you can activate it in the config with
`"autosave": "on_focus_change"`

See [doc - autosave](https://zed.dev/docs/configuring-zed#autosave)

## Finder shortcut

To add an "Open in Zed" shortcut in Macos Finder > Quick Actions, double click on the Automator workflow [Open in Zed.workflow](../assets/zed/Open%20in%20Zed.workflow/)

Or manually create an automator workflow with a single step "Run Shell Script" and the following content:
```sh
open -a /Applications/Zed.app "$1"
```

## Prompt database dump

[export_mdb.py](../assets/zed/export_mdb.py) is a script to dump the zed prompt database (LMDB) as json.

Assumes the DB is `~/.config/zed/prompts/prompts-library-db.0.mdb`

Make sure the Zed is closed before running the script ; else you'll see an `lmdb.VersionMismatchError` error.

Might break any time if the db format changes.

Run with: `uv run export_mdb.py`

# Ressources

- [Zed doc](https://zed.dev/docs/)
- [My Zed config](../assets/zed/settings.json)
- [Script to dumb the prompt db](../assets/zed/export_mdb.py)
