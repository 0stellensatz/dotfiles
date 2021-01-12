# Color
GREEN="%{$fg_bold[green]%}"
BLUE="%{$fg_bold[blue]%}"
RED="%{$fg_bold[red]%}"
YELLOW="%{$fg_bold[yellow]%}"
CYAN="%{$fg_bold[cyan]%}"
MAGENTA="%{$fg_bold[magenta]%}"
WHITE="%{$fg_bold[white]%}"
RESET="%{$reset_color%}"

# Format for git_prompt_info()
ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="$YELLOW*$RESET"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Format for git_prompt_status()
ZSH_THEME_GIT_PROMPT_ADDED="|$GREEN+$RESET"
ZSH_THEME_GIT_PROMPT_MODIFIED="|$BLUE!$RESET"
ZSH_THEME_GIT_PROMPT_DELETED="|$RED-$RESET"
ZSH_THEME_GIT_PROMPT_RENAMED="|$MAGENTA>$RESET"
ZSH_THEME_GIT_PROMPT_UNMERGED="|$YELLOW^$RESET"
ZSH_THEME_GIT_PROMPT_UNTRACKED="|$YELLOW?$RESET"

# Format for git_prompt_ahead()
ZSH_THEME_GIT_PROMPT_AHEAD="$YELLOW#$RESET"

# Directory info
# local current_dir='${PWD/#$HOME/~}'

function check_session_type() {
    SESSION_TYPE=local
    if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
        SESSION_TYPE=remote/ssh
    else
        case $(ps -o comm= -p $PPID) in
            sshd|*/sshd) SESSION_TYPE=remote/ssh;;
        esac
    fi

    echo $SESSION_TYPE
}

function dragon_check_ssh() {
    SESSION_TYPE=$(check_session_type)
    if [[ "remote/ssh" == $SESSION_TYPE ]]; then
		echo -n "$RED*"
    else
        echo -n "$GREEN-"
    fi
}

function get_git_prompt() {
    if git rev-parse --git-dir > /dev/null 2>&1; then
        if [[ -z $(git_prompt_info) ]]; then
            echo -n "(detached-head$RESET $(git_prompt_status)) "
        else
			if [[ $(git_prompt_short_sha) != "" ]]; then
            	echo -n "($(git_prompt_info)$(git_prompt_status)|$(git_prompt_short_sha)$RESET) "
			else
				echo -n "($(git_prompt_info)$(git_prompt_status)) "
			fi
		fi
    else
        echo -n "$RESET"
    fi
}

setopt promptsubst

function get_prompt() {
    DRAGON_USER="%n"
    DRAGON_MACHINE="$MAGENTA%m"
    DRAGON_DIRECTORY="$BLUE%~"

    
	echo "$GREEN$DRAGON_USER$RESET@$DRAGON_MACHINE$RESET:$DRAGON_DIRECTORY$RESET%% "
}

function get_rprompt() {
    RETVAL=$?
    if [[ "$UID" == 0 ]]; then
        DRAGON_PREFIX="$RED*"
    else
        DRAGON_PREFIX="$GREEN-"
    fi

    DRAGON_SESSION_INDICATOR=$(dragon_check_ssh)
    
    if [[ ${RETVAL} -ne 0 ]]; then
        DRAGON_PROMPT="$RED*"
    else
        DRAGON_PROMPT="$GREEN-"
    fi
    DRAGON_PROMPT="$DRAGON_PROMPT$RESET"
    DRAGON_DATE="%D{%FT%H:%M:%S%z}"

	echo "$RESET($DRAGON_PREFIX$DRAGON_SESSION_INDICATOR$DRAGON_PROMPT) $(get_git_prompt)$RESET$DRAGON_DATE"
}

PROMPT='$(get_prompt)'
RPROMPT='$(get_rprompt)'
