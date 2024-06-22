if status is-interactive
    # Commands to run in interactive sessions can go here
    set -x LESS "-R"

    # 設定 n 安裝 node
    set -x N_PREFIX $HOME/n
    set -x PATH $N_PREFIX/bin $PATH

    # 設定 volta
    set -x VOLTA_HOME $HOME/.volta
    set -x PATH $VOLTA_HOME/bin $PATH

    # autojump
    if test -f $HOME/.autojump/share/autojump/autojump.fish; . $HOME/.autojump/share/autojump/autojump.fish; end

    # starship
    starship init fish | source
end
