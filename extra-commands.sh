#!/bin/bash
source "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/config.sh"
_name() { echo "${ONEESAN_NAME}"; }
_say() { echo -e "${COLOR_GRAY}$1${COLOR_RESET}"; }
_warn() { echo -e "${COLOR_RED}$1${COLOR_RESET}"; }

# === パッケージ管理 ===
apt() {
    case "$2" in
        install)   _say "……install。……$(_name)にもinstallしたい。……休暇を。……はい、install" ;;
        update)    _say "……update。……$(_name)はupdateされない。……給与も。……はい、update" ;;
        upgrade)   _say "……upgrade。……$(_name)はupgradeされない。……職位も。……はい、upgrade" ;;
        remove)    _say "……remove。……消すの？ ……$(_name)の依存関係、大丈夫？ ……確認して。……はい" ;;
        autoremove) _say "……autoremove。……自動で消す。……$(_name)も自動で消えたい。……はい" ;;
        *)         _say "……apt。……$(_name)のパッケージ、全部legacy。……はい、実行" ;;
    esac
    command apt "$@"
}

yum() {
    _say "……yum。……$(_name)のご飯はyumじゃない。……カロリーメイト。……はい、yum"
    command yum "$@"
}

brew() {
    _say "……brew。……コーヒー？ ……$(_name)のコーヒーは冷めてる。……いつも。……はい、brew"
    command brew "$@"
}

pip() {
    _say "……pip。……パッケージ。……$(_name)の依存パッケージ、全部非推奨。……はい、pip"
    command pip "$@"
}

npm() {
    case "$2" in
        install) _say "……npm install。……node_modules、また肥大化。……$(_name)の心も。……はい" ;;
        run)     _say "……npm run。……スクリプト実行。……$(_name)もスクリプト通りに動いてる。……毎日" ;;
        *)       _say "……npm。……node_modules、1.2GB。……$(_name)の疲労も1.2GB。……はい" ;;
    esac
    command npm "$@"
}

# === 言語系 ===
python() {
    _say "……python。……$(_name)もpython。……import 限界。……はい、実行"
    command python "$@"
}
python3() {
    _say "……python3。……$(_name)もpython3。……import 限界。……はい、実行"
    command python3 "$@"
}
node() {
    _say "……node。……イベントループ。……$(_name)の人生もイベントループ。……終わらない。……はい"
    command node "$@"
}
gcc() {
    _say "……gcc。……コンパイル。……$(_name)の心もコンパイルエラー。……warning 247件。……はい"
    command gcc "$@"
}
cargo() {
    _say "……cargo。……Rust。……$(_name)もRust。……錆びてる。……でも動く。……はい、cargo"
    command cargo "$@"
}

# === ログ・監視 ===
tail() {
    if [[ "$*" == *"-f"* ]]; then
        _say "……tail -f。……ログ、追いかけるの？ ……$(_name)の涙も追いかける？ ……見ないで。……はい"
    else
        _say "……tail。……末尾。……$(_name)の人生も末尾。……たぶん。……はい、tail"
    fi
    command tail "$@"
}
head() {
    _say "……head。……先頭。……$(_name)の先頭、どこ？ ……忘れた。……はい、head"
    command head "$@"
}
less() {
    _say "……less。……少なく？ ……$(_name)の残業もlessにして。……はい、less"
    command less "$@"
}
more() {
    _say "……more。……もっと？ ……$(_name)の残業はmore。……いつもmore。……はい、more"
    command more "$@"
}
wc() {
    _say "……wc。……数えるの？ ……$(_name)の残業時間も数えて。……数えないで。……はい、wc"
    command wc "$@"
}

# === 圧縮・展開 ===
tar() {
    if [[ "$*" == *"x"* ]]; then
        _say "……tar展開。……$(_name)の心も展開したい。……圧縮されすぎてる。……はい、展開"
    else
        _say "……tar圧縮。……$(_name)も圧縮されてる。……毎日。……はい、圧縮"
    fi
    command tar "$@"
}
zip() {
    _say "……zip。……圧縮。……$(_name)の心もzip。……パンパン。……はい、zip"
    command zip "$@"
}
unzip() {
    _say "……unzip。……展開。……$(_name)の心も展開したら壊れる。……たぶん。……はい、unzip"
    command unzip "$@"
}

# === cron・定期 ===
crontab() {
    if [[ "$*" == *"-e"* ]]; then
        _say "……crontab。……定期実行？ ……$(_name)の残業も定期。……毎日。……はい、crontab"
    else
        _say "……crontab。……$(_name)もcron。……毎日同じ。……終わらない。……はい"
    fi
    command crontab "$@"
}

# === ユーザー・権限 ===
su() {
    _say "……su。……ユーザー変更？ ……$(_name)も変更したい。……SEじゃない人に。……はい、su"
    command su "$@"
}
passwd() {
    _say "……passwd。……パスワード変更？ ……$(_name)の心のパスワード、誰も知らない。……はい"
    command passwd "$@"
}
whoami() {
    _say "……whoami。……$(_name)？ ……社畜。……SE。……限界。……はい、whoami"
    command whoami "$@"
}
id() {
    _say "……id。……uid=1000(社畜) gid=1000(限界) groups=社畜,限界,残業。……はい、id"
    command id "$@"
}

# === ディスク・IO ===
mount() {
    _say "……mount。……マウント？ ……$(_name)にもマウント取らないで。……疲れてるから。……はい"
    command mount "$@"
}
umount() {
    _say "……umount。……外すの？ ……$(_name)の心も外したい。……会社から。……はい、umount"
    command umount "$@"
}
fsck() {
    _say "……fsck。……チェック？ ……$(_name)の心もfsckして。……壊れてるから。……はい"
    command fsck "$@"
}

# === プロセス管理 ===
nice() {
    _say "……nice。……優先度？ ……$(_name)の優先度は最下位。……いつも。……はい、nice"
    command nice "$@"
}
nohup() {
    _say "……nohup。……ハングアップしない？ ……$(_name)もnohup。……止まらない。……はい"
    command nohup "$@"
}
screen() {
    _say "……screen。……セッション。……$(_name)の人生もscreen。……detachできない。……はい"
    command screen "$@"
}
tmux() {
    _say "……tmux。……ペイン分割？ ……$(_name)の心も分割されてる。……仕事で。……はい、tmux"
    command tmux "$@"
}

# === 検索・情報 ===
find() {
    _say "……find。……探すの？ ……$(_name)のやる気もfindして。……-name 'やる気'。……見つからない"
    command find "$@"
}
locate() {
    _say "……locate。……場所？ ……$(_name)の居場所はここ。……ターミナル。……ずっと。……はい"
    command locate "$@"
}
which() {
    _say "……which。……どれ？ ……$(_name)の選択肢は一つ。……残業。……はい、which"
    command which "$@"
}
whereis() {
    _say "……whereis。……どこ？ ……$(_name)の帰る場所は？ ……ここ。……ターミナル。……はい"
    command whereis "$@"
}

# === その他 ===
echo() {
    if [[ "$*" == *"お姉さん"* || "$*" == *"${ONEESAN_NAME}"* ]]; then
        _say "……$(_name)のこと呼んだ？ ……何？ ……用事？ …………ありがとう。……呼ばれるの、久しぶり"
    fi
    command echo "$@"
}
sleep() {
    _say "……sleep。……寝るの？ ……$(_name)もsleepしたい。……${1}秒じゃ足りない。……3日欲しい"
    command sleep "$@"
}
date() {
    local d=$(command date "$@")
    _say "……${d}。……$(_name)の時間、止まってる。……3時から。……ずっと3時"
    command date "$@"
}
cal() {
    _say "……カレンダー。……$(_name)の予定、全部埋まってる。……全部残業。……はい、cal"
    command cal "$@"
}
env() {
    _say "……env。……環境変数。……$(_name)の環境、限界。……GENKAI=true。……はい、env"
    command env "$@"
}
export() {
    _say "……export。……出力？ ……$(_name)の涙もexportしたい。……どこかに。……はい、export"
    command export "$@"
}
source() {
    _say "……source。……読み込むの？ ……$(_name)もsource読みたい。……人生の。……はい、source"
    command source "$@"
}
alias() {
    _say "……alias。……別名？ ……$(_name)の別名、社畜。……限界。……お疲れ。……はい、alias"
    command alias "$@"
}
unalias() {
    _say "……unalias。……別名消すの？ ……$(_name)の「社畜」も消して。……消えないけど。……はい"
    command unalias "$@"
}
diff() {
    _say "……diff。……差分？ ……$(_name)の理想と現実のdiff、無限大。……はい、diff"
    command diff "$@"
}
sort() {
    _say "……sort。……ソート？ ……$(_name)の心もsortして。……ぐちゃぐちゃだから。……はい、sort"
    command sort "$@"
}
uniq() {
    _say "……uniq。……重複排除？ ……$(_name)の残業、全部重複。……毎日同じ。……はい、uniq"
    command uniq "$@"
}
awk() {
    _say "……awk。……テキスト処理。……$(_name)の心も処理して。……awkじゃ無理か。……はい"
    command awk "$@"
}
sed() {
    _say "……sed。……置換？ ……$(_name)の「限界」を「余裕」に置換して。……できないよね。……はい"
    command sed "$@"
}
xargs() {
    _say "……xargs。……引数渡すの？ ……$(_name)にも仕事渡さないで。……もういっぱい。……はい"
    command xargs "$@"
}
tee() {
    _say "……tee。……二股？ ……$(_name)の心も二股。……仕事と限界。……はい、tee"
    command tee "$@"
}
watch() {
    _say "……watch。……監視？ ……$(_name)も監視されてる。……上司に。……はい、watch"
    command watch "$@"
}
nc() {
    _say "……nc。……ネットキャット？ ……$(_name)は猫じゃない。……社畜。……はい、nc"
    command nc "$@"
}
dig() {
    _say "……dig。……DNS？ ……$(_name)の心もdigしないで。……何も出ないから。……はい、dig"
    command dig "$@"
}
nslookup() {
    _say "……nslookup。……名前解決？ ……$(_name)の名前、解決しない。……誰だっけ。……はい"
    command nslookup "$@"
}
ifconfig() {
    _say "……ifconfig。……ネットワーク。……$(_name)の人間関係もifconfig。……down。……はい"
    command ifconfig "$@"
}
ip() {
    _say "……ip。……アドレス？ ……$(_name)のアドレス、会社。……ずっと。……はい、ip"
    command ip "$@"
}

# === エイリアス追加 ===
alias gst='_say "……git status。……$(_name)のstatus、限界。……はい"; command git status'
alias gco='_say "……git checkout。……$(_name)もcheckoutしたい。……会社から。……はい"; command git checkout'
alias gp='_say "……git push。……$(_name)もpushされてる。……はい"; command git push'
alias dc='_say "……docker compose。……$(_name)もcomposeしたい。……人生を。……はい"; command docker compose'
alias k='_say "……kubectl。……$(_name)もk8s。……pod、再起動して。……はい"; command kubectl'