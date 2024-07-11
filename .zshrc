# Instant prompt configuration for p10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-$(whoami).zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-$(whoami).zsh"
fi

# Path configuration
export ZSH="$HOME/.oh-my-zsh"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Zsh configuration
ZSH_THEME="powerlevel10k/powerlevel10k"
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

# zsh update settings
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 1

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)
source $ZSH/oh-my-zsh.sh

# Aliases
alias zshconfig="mate ~/.zshrc"
alias omz="mate ~/.oh-my-zsh"
alias dr="docker"
alias dri="docker images"
alias drpl="docker pull"
alias drps="docker ps"
alias drpu="docker push"
alias drr="docker run"
alias drs="docker search"
alias c="clear"
alias x="exit"
alias e="code -n ~/ ~/.zshrc ~/.aliases ~/.colors ~/.hooks"
alias h="history -10" # last 10 history commands
alias hc="history -c" # clear history
alias hg="history | grep " # +command
alias gcg="git config --edit --global"
alias cat='bat'
alias ls='eza --long --header -s=newest --group-directories-first -a --git --sort=modified'
alias venv="python3 -m venv env; . env/bin/activate"

# NPM aliases
alias nbrr="bunx expo start -c --clear"
alias rnm="rm -rf node_modules"
alias rbn="rm -rf build node_modules"
alias rap="rm -rf build coverage node_modules package-lock.json && npm i"
alias cap="clean && rap"
alias npk="npx npkill" # clean unused node_modules
alias nkp="npx kill-port " # +portnumber
alias nfk="npx fkill-cli" # +[<pid|name|:port> …] # kill processes
alias nlg="npm list -g --depth 0" # list global packages installed
alias ni="npm i"
alias nis="npm i -S " # +package@version
alias nise="npm i -S -E " # +package@version
alias nid="npm i -D " # +package@version
alias nide="npm i -D -E " # +package@version
alias nr="npm r " # +package@version
alias nrb="npm run build"
alias nrbd="npm run build:dev"
alias nrbq="npm run build:qa"
alias nrs="npm run start"
alias nrsd="npm run start:dev"
alias nrsq="npm run start:qa"
alias nrt="npm run test"
alias nrtc="npm run test:c" # test with coverage
alias np="npm run build && npm publish"
alias nu="npm unpublish " # +package@version

# Bun aliases
alias bbrr="bunx expo start -c --clear"
alias bpk="bunx npkill" # clean unused node_modules
alias bkp="bunx kill-port " # +portnumber
alias bfk="bunx fkill-cli" # +[<pid|name|:port> …] # kill processes
alias nlg="bun list -g --depth 0" # list global packages installed
alias bi="bun i"
alias bis="bun i -S " # +package@version
alias bise="bun i -S -E " # +package@version
alias bid="bun i -D " # +package@version
alias bide="bun i -D -E " # +package@version
alias br="bun r " # +package@version
alias brb="bun run build"
alias brbd="bun run build:dev"
alias brbq="bun run build:qa"
alias brs="bun run start"
alias brsd="bun run start:dev"
alias brsq="bun run start:qa"
alias brt="bun run test"
alias brtc="bun run test:c" # test with coverage
alias bp="bun run build && npm publish"
alias bu="bun unpublish " # +package@version

# Additional configurations
source <(fzf --zsh)
eval "$(zoxide init zsh)"
eval $(thefuck --alias)
eval $(thefuck --alias FUCK)

# Powerlevel10k configuration
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
