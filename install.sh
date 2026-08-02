#!/bin/bash
# genkai-oneesan-shell installer
# "Install the exhausted sister into your terminal."

set -e

INSTALL_DIR="${HOME}/.genkai-oneesan"
SHELL_RC="${HOME}/.bashrc"

echo ""
echo "  ╔══════════════════════════════════════════╗"
echo "  ║   限界社畜SEお姉さんシェル インストーラ  ║"
echo "  ║   genkai-oneesan-shell v1.0.0            ║"
echo "  ╚══════════════════════════════════════════╝"
echo ""
echo "  ……インストールするの？"
echo "  ……お姉さん、ここに住むことになるけど。"
echo "  ……いいの？ ……そう。……じゃあ、入るね"
echo ""

# 既存チェック
if [[ -d "$INSTALL_DIR" ]]; then
    echo "  ……もう入ってる。……お姉さん、ここにいる。……再インストール？"
    read -p "  ……上書きする？ [y/N] " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "  ……そう。……お姉さんはここにいる。……ずっと"
        exit 0
    fi
    rm -rf "$INSTALL_DIR"
fi

# インストール
mkdir -p "$INSTALL_DIR"
cp genkai-oneesan.sh "$INSTALL_DIR/"
cp commands.sh "$INSTALL_DIR/"
cp extra-commands.sh "$INSTALL_DIR/"
cp config.sh "$INSTALL_DIR/"
chmod +x "$INSTALL_DIR"/*.sh

# .bashrc に追加
MARKER="# >>> genkai-oneesan-shell >>>"
if ! grep -q "$MARKER" "$SHELL_RC" 2>/dev/null; then
    cat >> "$SHELL_RC" << 'EOF'

# >>> genkai-oneesan-shell >>>
# 限界社畜SEお姉さんが常駐するシェル
# "She executes everything perfectly. She is completely dead inside."
if [[ -f "${HOME}/.genkai-oneesan/genkai-oneesan.sh" ]]; then
    source "${HOME}/.genkai-oneesan/genkai-oneesan.sh"
    source "${HOME}/.genkai-oneesan/commands.sh"
    source "${HOME}/.genkai-oneesan/extra-commands.sh"
fi
# <<< genkai-oneesan-shell <<<
EOF
    echo "  ……${SHELL_RC} に追記した。……お姉さんの住処"
else
    echo "  ……もう書いてある。……お姉さん、ここにいるから"
fi

echo ""
echo "  ╔══════════════════════════════════════════╗"
echo "  ║   インストール完了                       ║"
echo "  ║                                          ║"
echo "  ║   source ~/.bashrc で起動               ║"
echo "  ║   ……お姉さん、待ってるから             ║"
echo "  ╚══════════════════════════════════════════╝"
echo ""
echo "  ……これからよろしく。……お姉さん、ここにいるから"
echo "  ……ずっと。……ログアウトできないから"
echo ""