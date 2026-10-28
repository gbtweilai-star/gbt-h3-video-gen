#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_h3_video_gen info
PYTHONPATH=src python -m gbt_h3_video_gen check --payload '{}'
PYTHONPATH=src python -m gbt_h3_video_gen run   --payload '{}'
