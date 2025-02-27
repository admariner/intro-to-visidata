export LANG=en_US.UTF-8
export NCURSES_NO_UTF8_ACS=1
export BASH_SILENCE_DEPRECATION_WARNING=1
export PROMPT_COMMAND=""

# via https://stackoverflow.com/a/6086978
function promptify {
    local __color="\[\033[38;5;37m\]"
    local __cur_location="" #"\w"
    local __prompt_tail="$"
    local __last_color="\[\033[00m\]"
    export PS1="$__color$__prompt_tail$__last_color "
}

export TERM=xterm-256color
export CLICOLOR=1
promptify
SCRIPT_DIR=$(cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)
alias vd="vd --config $SCRIPT_DIR/visidatarc.py --visidata-dir $SCRIPT_DIR/visidata-dir"
