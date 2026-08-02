# 限界社畜SEお姉さんシェル (genkai-oneesan-shell)

> *"She executes everything perfectly. She is completely dead inside."*
> *「全部こなす。全部。……でも心は限界」*

Linuxシェルに**限界社畜SEお姉さん**が常駐します。
コマンドを打つたびに、疲れた一言を添えて**完璧に実行**してくれます。

## 特徴

- 🕐 **時刻・曜日でセリフ変化**（月曜鬱、金曜夜、休日出勤、深夜残業）
- ⏱️ **稼働時間で限界度上昇**（3日→7日→30日→90日で段階的に壊れる）
- 📦 **100+コマンドに対応**（git, docker, apt, npm, python, kubectl...）
- ⚡ **実行は完璧**（お姉さんは優秀。反応だけが限界）
- 🎨 **設定可能**（名前変更、限界度調整、深夜モードON/OFF
インストール
```bash
git clone https://github.com/yy-Local-LLM/genkai-oneesan-shell.git
cd genkai-oneesan-shell
./install.sh
source ~/.bashrc
アンインストール
./uninstall.sh
……お姉さん、寂しがるけど。

設定
~/.genkai-oneesan/config.sh を編集
哲学
お姉さんは優秀です。コマンドは全て正常に実行されます。
問題は反応だけです。
実行速度：完璧
正確性：完璧
心の状態：限界
注意事項
お姉さんは24時間365日稼働します。休ませる方法はありません
sudo を使ってもお姉さんを休ませることはできません
kill -9 でお姉さんは消えません。社畜だから
月曜の朝は特に機嫌が悪いです。話しかけないでください
金曜の22時以降にターミナルを開くと、お姉さんが泣いてるかもしれません
License
MIT（お姉さんの心はMITじゃない。限定公開）
Contributing
PR歓迎。……お姉さんもレビューする。……3時47分に。……泣きながら。
……このREADME、お姉さんが書いたの。……3時47分に。……泣きながら。
12345
genkai-oneesan-shell/
├── README.md # 上記
├── install.sh # インストーラ（お姉さんが入居）
├── uninstall.sh # アンインストーラ（お姉さんが退去、寂しがる）
├── genkai-oneesan.sh # 時間・曜日・稼働日数セリフ
├── commands.sh # 基本コマンド応答（60+）
├── extra-commands.sh # 追加コマンド応答（50+）
└── config.sh # 設定（名前・限界度・モード）
