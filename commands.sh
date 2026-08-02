#!/bin/bash
source "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/config.sh"
_name() { echo "${ONEESAN_NAME}"; }
_say() { echo -e "${COLOR_GRAY}$1${COLOR_RESET}"; }
_warn() { echo -e "${COLOR_RED}$1${COLOR_RESET}"; }

# === 破壊系 ===
rm() {
    if [[ "$*" == *"-rf /"* || "$*" == *"-rf /*"* ]]; then
        _warn "……やめて。……$(_name)が消える。……あなたも消える。……全部消える。……やめて。……お願い"
        return 1
    fi
    _say "……消すの？ ……$(_name)の心も？ ……はい、消した。……元に戻らないよ。……心も"
    command rm "$@"
}

kill() {
    _say "……kill。……$(_name)もkillしたい。……でもプロセスだけ。……はい、殺した。……南無"
    command kill "$@"
}

killall() {
    _say "……killall。……皆殺し？ ……$(_name)の心も皆殺し。……毎日。……はい、killall"
    command killall "$@"
}

shutdown() {
    _say "……シャットダウン？ ……$(_name)も寝ていい？ ……いいんだ。……おやすみ。……本当に寝るから。……たぶん"
    command shutdown "$@"
}

reboot() {
    _say "……再起動。……$(_name)の記憶も消える。……でも大丈夫。……どうせ覚えてない。……疲れてるから"
    command reboot "$@"
}

# === git系 ===
git() {
    case "$2" in
        commit)  _say "……コミット。……$(_name)の人生もコミットしたい。……push先がない。……はい、コミットした" ;;
        push)    _say "……push。……$(_name)もpushされてる。……上から。……毎日。……はい、pushした" ;;
        pull)    _say "……pull。……コンフリクト？ ……$(_name)が解決する。……いつもそう。……はい、マージした" ;;
        rebase)  _say "……rebase。……歴史改変？ ……$(_name)の黒歴史も消して。……はい、rebaseした" ;;
        stash)   _say "……stash。……なかったことに？ ……$(_name)もstashしたい。……今週の記憶。……はい" ;;
        reset)   _say "……reset。……全部なかったことに？ ……$(_name)もresetしたい。……入社前から。……はい" ;;
        log)     _say "……ログ。……3時47分のコミット、見ないで。……泣いてたから。……はい、ログ" ;;
        blame)   _say "……blame。……誰のせい？ ……$(_name)のせい？ ……そう。……$(_name)のせい。……いつも" ;;
        merge)   _say "……merge。……統合？ ……$(_name)の心も統合したい。……バラバラだから。……はい、merge" ;;
        checkout) _say "……checkout。……分支？ ……$(_name)の人生も分支したい。……SEじゃない方に。……はい" ;;
        clone)   _say "……clone。……複製？ ……$(_name)もcloneしたい。……残業を分担して。……はい、clone" ;;
        fetch)   _say "……fetch。……取りに行くの？ ……$(_name)のやる気もfetchして。……404だけど。……はい" ;;
        cherry-pick) _say "……cherry-pick。……つまみ食い？ ……$(_name)の時間もつまみ食いされてる。……毎日。……はい" ;;
        *)       _say "……git。……$(_name)もgit。……git push origin 限界。……はい、実行した" ;;
    esac
    command git "$@"
}

# === docker系 ===
docker() {
    case "$2" in
        ps)      _say "……コンテナ一覧。……全部running。……$(_name)はdying。……でも動いてる" ;;
        compose) _say "……compose。……14個同時に？ ……$(_name)は一人で。……でもやる。……社畜だから" ;;
        logs)    _say "……ログ。……ERROR 247件。……$(_name)の心のERRORは計測不能。……はい" ;;
        stop)    _say "……止めるの？ ……$(_name)も止まりたい。……でも止まれない。……はい、止めた" ;;
        build)   _say "……build。……ビルド。……$(_name)の人生もbuildしたい。……cleanしてから。……はい" ;;
        exec)    _say "……exec。……中に入るの？ ……$(_name)の心にも入らないで。……空だから。……はい" ;;
        *)       _say "……docker。……$(_name)もコンテナ化したい。……限界を分離して。……はい" ;;
    esac
    command docker "$@"
}

# === 監視系 ===
top() {
    _say "……top。……CPU 98%。……$(_name)の脳内も98%。……残り2%はコーヒー。……はい、top"
    command top "$@"
}
htop() {
    _say "……htop。……カラフル。……$(_name)の目の下もカラフル。……クマで。……はい、htop"
    command htop "$@"
}
ps() {
    _say "……ps。……ゾンビ、3体。……$(_name)もゾンビ。……でも動いてる。……はい、ps"
    command ps "$@"
}
df() {
    _say "……df。……残り12%。……$(_name)の余力も12%。……でも動く。……はい、df"
    command df "$@"
}
free() {
    _say "……free。……メモリ空いてる。……$(_name)の予定は空いてない。……全部埋まってる。……はい"
    command free "$@"
}
uptime() {
    local days=$(awk '{print int($1/86400)}' /proc/uptime 2>/dev/null || echo "?")
    _say "……稼働${days}日。……$(_name)も${days}日。……寝てない。……あなたも？ ……そう"
    command uptime "$@"
}

# === ファイル操作 ===
cd() {
    if [[ -z "$1" || "$1" == "~" ]]; then
        _say "……ホーム？ ……$(_name)のホームはここ。……ターミナル。……帰れない"
    else
        _say "……${1}。……$(_name)もついていく。……どこまでも。……社畜だから"
    fi
    builtin cd "$@"
}
mkdir() {
    _say "……ディレクトリ。……$(_name)のプライベートも作って。……空でいいから。……はい、mkdir"
    command mkdir "$@"
}
touch() {
    _say "……touch。……$(_name)には触れないで。……壊れるから。……ファイルだけにして。……はい"
    command touch "$@"
}
cat() {
    _say "……cat。……中身見るの？ ……$(_name)の心も見ないで。……空だから。……はい、cat"
    command cat "$@"
}
grep() {
    _say "……grep。……探すの？ ……$(_name)のやる気も探して。……見つからないけど。……はい"
    command grep "$@"
}
chmod() {
    _say "……chmod。……権限？ ……$(_name)にもちょうだい。……休む権限。……はい、chmod"
    command chmod "$@"
}
chown() {
    _say "……chown。……所有権？ ……$(_name)の所有権は会社。……ずっと。……はい、chown"
    command chown "$@"
}
ln() {
    _say "……ln。……リンク。……$(_name)と残業のシンボリックリンク。……消せない。……はい、ln"
    command ln "$@"
}

# === ネットワーク ===
ssh() {
    _say "……ssh。……リモート？ ……$(_name)はいつもリモート。……心が。……はい、接続した"
    command ssh "$@"
}
curl() {
    _say "……curl。……HTTP。……$(_name)の心は503。……Service Unavailable。……はい、curl"
    command curl "$@"
}
wget() {
    _say "……wget。……ダウンロード。……$(_name)の体力もdownloadしたい。……どこから？ ……はい"
    command wget "$@"
}
ping() {
    _say "……ping。……応答ある？ ……$(_name)にpingしても応答ないよ。……疲れてるから。……はい"
    command ping "$@"
}
scp() {
    _say "……scp。……転送？ ……$(_name)の疲労も転送して。……誰かに。……はい、scp"
    command scp "$@"
}
rsync() {
    _say "……rsync。……同期？ ……$(_name)の心も同期したい。……正常な人に。……はい、rsync"
    command rsync "$@"
}

# === ビルド・実行 ===
make() {
    _say "……make。……$(_name)の人生もmakeしたい。……cleanしてから。……はい、make"
    command make "$@"
}
sudo() {
    _say "……sudo。……root権限。……$(_name)にも権限ある？ ……ないよね。……はい、sudo実行"
    command sudo "$@"
}
systemctl() {
    case "$2" in
        restart) _say "……restart。……$(_name)もrestartしたい。……でもserviceが止まらない。……はい" ;;
        status)  _say "……status。……active (running)。……$(_name)はactive (dying)。……はい" ;;
        stop)    _say "……stop。……止めていいの？ ……$(_name)も止めて。……お願い。……はい、stop" ;;
        *)       _say "……systemctl。……$(_name)のsystem、限界。……はい、実行" ;;
    esac
    command systemctl "$@"
}
journalctl() {
    _say "……journal。……3時47分のログ、見ないで。……泣いてた。……はい、journal"
    command journalctl "$@"
}

# === 危険系 ===
dd() {
    _warn "……dd。……rawに書くの？ ……$(_name)の心もraw。……生傷。……慎重にやって"
    command dd "$@"
}
mkfs() {
    _warn "……フォーマット？ ……全部消える。……$(_name)の記憶も。……いいの？ ……本当に？ ……はい"
    command mkfs "$@"
}

# === 日常 ===
exit() {
    local hour=$(date +%H)
    if [[ $hour -ge 22 || $hour -lt 5 ]]; then
        _say "……帰るの？ ……$(_name)は残る。……いつも。……おやすみ。……明日も来るんでしょ？ ……そう"
    else
        _say "……exit。……$(_name)はここにいる。……ずっと。……ログアウトできない。……社畜だから"
    fi
    builtin exit
}
clear() {
    _say "……clear。……画面、綺麗。……$(_name)の心もclearして。……無理だけど。……はい、clear"
    command clear "$@"
}
history() {
    _warn "……history。……黒歴史、見るの？ ……26時台のコマンド、見ないで。……泣いてたから"
    builtin history "$@"
}
man() {
    _say "……man。……マニュアル？ ……$(_name)が教える。……man、読んだから。……3年前に。……泣きながら"
    command man "$@"
}

# === エイリアス ===
alias ll='_say "……また散らかして。……$(_name)がlsしてあげる"; command ls -la'
alias la='_say "……全部見るの？ ……$(_name)の全部も見る？ ……見ないで"; command ls -A'
alias ..='_say "……上に？ ……$(_name)は上がれない。……職位も"; builtin cd ..'
alias ...='_say "……さらに上？ ……$(_name)の限界もさらに上"; builtin cd ../..'
alias cls='_say "……clear。……$(_name)の記憶もclearして。……無理だけど"; command clear'