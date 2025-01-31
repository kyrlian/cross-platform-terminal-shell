# export_mdb.py

Script to dump the zed prompt database (LMDB) as json

1. Make sure the Zed is closed ; else you'll see an `lmdb.VersionMismatchError` error
2. Run with: `uv run export_mdb.py`
