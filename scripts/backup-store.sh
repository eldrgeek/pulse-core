#!/usr/bin/env bash
# Snapshot store/events.jsonl to ~/Vault/Archive/pulse-core-backups/
# Keeps the 30 most recent snapshots.

set -euo pipefail

STORE="$HOME/Projects/SOMA/pulse-core/store/events.jsonl"
BACKUP_DIR="$HOME/Vault/Archive/pulse-core-backups"
TIMESTAMP=$(date +%Y%m%d-%H%M%S)
DEST="$BACKUP_DIR/events-$TIMESTAMP.jsonl"
KEEP=30

mkdir -p "$BACKUP_DIR"

if [[ ! -f "$STORE" ]]; then
  echo "ERROR: store not found at $STORE" >&2
  exit 1
fi

cp "$STORE" "$DEST"
echo "pulse-backup: $DEST ($(wc -l < "$DEST") lines)"

# Also commit + push to git remote so the canonical record is off-box in GitHub
cd "$HOME/Projects/SOMA/pulse-core"
if ! git diff --quiet -- store/events.jsonl ARTIFACTS.md INDEX.md SCOREBOARD.md 2>/dev/null; then
  git add store/events.jsonl ARTIFACTS.md INDEX.md SCOREBOARD.md 2>/dev/null || true
  git commit -m "chore(store): automated backup snapshot $TIMESTAMP" \
    --author="pulse-backup <noreply@soma>" 2>/dev/null || true
  git push origin main 2>/dev/null || echo "pulse-backup: git push skipped (no network or nothing new)"
fi

# Prune old snapshots — keep newest $KEEP
ls -1t "$BACKUP_DIR"/events-*.jsonl 2>/dev/null | tail -n +$((KEEP + 1)) | xargs rm -f --

echo "pulse-backup: done. Snapshots kept: $(ls -1 "$BACKUP_DIR"/events-*.jsonl 2>/dev/null | wc -l)"
