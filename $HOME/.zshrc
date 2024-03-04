# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=50000
SAVEHIST=50000
bindkey -e
# End of lines configured by zsh-newuser-install

source ~/.zplug/init.zsh

# Can manage self (zplug)
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

# Plugins
zplug "chrissicool/zsh-256color"
zplug "mafredri/zsh-async"
zplug "marlonrichert/zsh-autocomplete"
zplug "zpm-zsh/colorize"
zplug "Freed-Wu/zsh-command-not-found"
zplug "popstas/zsh-command-time"
zplug "gretzky/n.zsh"
zplug "lukechilds/zsh-nvm"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-history-substring-search"

# Completions
zplug "eastokes/aws-plugin-zsh"
zplug "dim-an/cod", defer:2
zplug "zsh-users/zsh-completions"
zplug "greymd/docker-zsh-completion"
zplug "srijanshetty/zsh-pip-completion"

# Can manage local plugins
# zplug "~/.zsh", from:local

# Load theme file
zplug 'vkaracic/lambdav-zsh-theme', as:theme

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose

# Map docker port from Windows
export DOCKER_HOST=tcp://0.0.0.0:2375

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

source /home/crispy/.bash_aliases

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Change directory background color for ls commands
LS_COLORS="ow=01;36;41" && export LS_COLORS

# Skip words using ctrl+arrow
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
