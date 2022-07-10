# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/andres/.oh-my-zsh"

export TERM="xterm-256color"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colored-man-pages zsh-autosuggestions docker kubectl)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim' # Antes era 'mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Brinqa Home
export BRINQA_HOME=/home/andres/.brinqa

# Brinqa Project Home
export BRINQA_PROJECT_HOME=/home/andres/Brinqa

# Brinqa Core
export BRINQA_CORE=/home/andres/Brinqa/brinqa-core

# BRINQA ARTIFACTORY
export MAVEN_USERNAME="abutelman"
export MAVEN_PASSWORD="hmNjRkNzhlYjA5NWI"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias l="ls -ltrah"
alias c="clear"
alias e="exit"
alias k="kubectl"
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias say='echo "$1" | espeak-ng -s 130 2>/dev/null'
alias j8="sudo update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java && java -version"
alias j11="sudo update-alternatives --set java /usr/lib/jvm/java-11-openjdk-amd64/bin/java && java -version"
alias remoteMouse="/home/andres/Descargas/RemoteMouse/remoteMouse.sh"
alias antlr4='java -Xmx500M -cp "/usr/local/lib/antlr-4.9-complete.jar:$CLASSPATH" org.antlr.v4.Tool'
alias grun='java -Xmx500M -cp "/usr/local/lib/antlr-4.9-complete.jar:$CLASSPATH" org.antlr.v4.gui.TestRig'
alias dark='echo 0 | sudo tee /sys/class/backlight/amdgpu_bl0/brightness'

alias commit="$BRINQA_PROJECT_HOME/scripts/commit.sh"
alias pushToGit="$BRINQA_PROJECT_HOME/scripts/pushToGit.sh"
alias push="$BRINQA_PROJECT_HOME/scripts/push.sh"
alias pull="$BRINQA_PROJECT_HOME/scripts/pull.sh"
alias merge="$BRINQA_PROJECT_HOME/scripts/merge.sh"
alias codenarc="$BRINQA_PROJECT_HOME/scripts/codenarc.sh"
alias clean="$BRINQA_PROJECT_HOME/scripts/clean.sh"
alias start="$BRINQA_PROJECT_HOME/scripts/start.sh"
alias down="$BRINQA_PROJECT_HOME/scripts/down.sh"
alias stop="$BRINQA_PROJECT_HOME/scripts/stop.sh"


alias idea='/home/andres/idea-IU-211.6693.111/bin/idea.sh &'

# Sincronizar todo brinqa-core desde la Notebook a la Desktop, sólo código
alias sync='rsync -avz --delete --exclude "*.git/" --exclude "*.idea/" --exclude "*.gradle/" --exclude "*node_modules/" --exclude "*static/" --exclude "*build/" $BRINQA_CORE abutelman@desktop:/home/abutelman/Brinqa'

export CLASSPATH="/usr/local/lib/antlr-4.9-complete.jar:$CLASSPATH"


source /usr/share/powerlevel9k/powerlevel9k.zsh-theme
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Groovy y Grails
export PATH=$PATH:"/home/andres/.sdkman/candidates/groovy/3.0.6/bin":"/home/andres/grails-4.0.4/bin"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/andres/.sdkman"
[[ -s "/home/andres/.sdkman/bin/sdkman-init.sh" ]] && source "/home/andres/.sdkman/bin/sdkman-init.sh"

