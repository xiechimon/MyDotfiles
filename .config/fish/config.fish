if status is-interactive
    # Commands to run in interactive sessions can go here
end

# fish
set -g fish_greeting (set_color normal)"Welcome back, "(set_color green)"xmon"(set_color normal)"!"


# Kitty: ~/.local/kitty.app/bin
set -U fish_user_paths $HOME/.local/kitty.app/bin $fish_user_paths

# Created by `pipx` on 2025-12-01 07:17:26
set PATH $PATH /home/xmon/.local/bin

# thefuck
thefuck --alias | source

# clash
function proxy
    set -gx http_proxy http://127.0.0.1:7897
    set -gx https_proxy http://127.0.0.1:7897
    set -gx all_proxy socks5://127.0.0.1:7897
end

function noproxy
  set -e http_proxy
  set -e https_proxy
  set -e all_proxy
end

# fcitx5 on kitty
set -gx GLFW_IM_MODULE ibus

# Java 环境变量
set -x JAVA_HOME /opt/jdk/jdk-21.0.9
set -x PATH $PATH $JAVA_HOME/bin

# starship
starship init fish | source

# zoxide
zoxide init fish | source

# tldr
set -x TLDR_LANGUAGE zh
set -x TLDR_CACHE_ENABLED 1

# nvm
nvm use lts > /dev/null 2>&1

# claude
set -gx ANTHROPIC_BASE_URL "https://api.siliconflow.cn/"
set -gx ANTHROPIC_MODEL "deepseek-ai/DeepSeek-V3.2"
set -gx ANTHROPIC_API_KEY "sk-tvwauhtwetfqzwxievnuqkcjboevyflajzojnqzuxfkroqaq"

# alias
alias ls="lsd"
alias cat="batcat"
alias cd="z"
alias sd="poweroff"
alias gemini="proxy && command gemini"




# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/xmon/miniconda3/bin/conda
    eval /home/xmon/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/xmon/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/xmon/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/xmon/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

