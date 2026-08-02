#!/bin/bash
# genkai-oneesan-shell 設定

# お姉さんの名前（空なら「お姉さん」）
ONEESAN_NAME="お姉さん"

# 限界度 (1-5)
# 1: まだ余裕  3: 通常  5: 完全に限界
GENKAI_LEVEL=3

# 色
COLOR_GRAY='\033[90m'
COLOR_RED='\033[91m'
COLOR_YELLOW='\033[93m'
COLOR_RESET='\033[0m'

# 深夜残業モード（22時以降に追加セリフ）
OVERTIME_MODE=true

# 月曜鬱モード
MONDAY_DEPRESSION=true