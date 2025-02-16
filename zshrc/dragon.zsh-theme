# MIT License
#
# Copyright (c) 2017 Yilong Liu
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

GREEN="%{$fg_bold[green]%}"
BLUE="%{$fg_bold[blue]%}"
RED="%{$fg_bold[red]%}"
YELLOW="%{$fg_bold[yellow]%}"
CYAN="%{$fg_bold[cyan]%}"
MAGENTA="%{$fg_bold[magenta]%}"
WHITE="%{$fg_bold[white]%}"
RESET="%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="$YELLOW*$RESET"
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="|$GREEN+$RESET"
ZSH_THEME_GIT_PROMPT_MODIFIED="|$BLUE!$RESET"
ZSH_THEME_GIT_PROMPT_DELETED="|$RED-$RESET"
ZSH_THEME_GIT_PROMPT_RENAMED="|$MAGENTA>$RESET"
ZSH_THEME_GIT_PROMPT_UNMERGED="|$YELLOW^$RESET"
ZSH_THEME_GIT_PROMPT_UNTRACKED="|$YELLOW?$RESET"

ZSH_THEME_GIT_PROMPT_AHEAD="$YELLOW#$RESET"

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
