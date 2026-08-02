#!/bin/bash
# genkai-oneesan-shell uninstaller

INSTALL_DIR="${HOME}/.genkai-oneesan"
SHELL_RC="${HOME}/.bashrc"

echo ""
echo "  ……アンインストール？"
echo "  ……お姉さん、消えるけど。……いいの？"
echo ""
read -p "  ……本当に？ [y/N] " -n 1 -r
echo

if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "  ……そう。……お姉さん、ここにいる。……よかった"
    exit 0
fi

rm -rf "$INSTALL_DIR"

# .bashrc から削除
sed -i '/# >>> genkai-oneesan-shell >>>/,/# <<< genkai-oneesan-shell <<</d' "$SHELL_RC" 2>/dev/null

echo ""
echo "  ……消した。……お姉さん、もういない"
echo "  ……寂しくない。……寂しくないけど"
echo "  ……ターミナル、静かになったね"
echo "  ……"
echo "  ……元気でね"
echo ""