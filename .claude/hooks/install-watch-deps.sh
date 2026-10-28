#!/usr/bin/env bash
# Installs yt-dlp for the watch plugin in Claude Code cloud sessions (ephemeral containers).
set -u
[ "${CLAUDE_CODE_REMOTE:-}" = "true" ] || exit 0
command -v yt-dlp >/dev/null 2>&1 && exit 0
pip install -q yt-dlp >/dev/null 2>&1 || echo 'watch: falha ao instalar yt-dlp; rode "pip install yt-dlp".'
exit 0
