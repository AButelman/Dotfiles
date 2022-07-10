# Setup fzf
# ---------
if [[ ! "$PATH" == */home/andres/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/andres/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/andres/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/andres/.fzf/shell/key-bindings.zsh"
