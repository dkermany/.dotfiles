RAINBOW=(
  "$(printf '\033[38;2;255;0;0m')"
  "$(printf '\033[38;2;255;97;0m')"
  "$(printf '\033[38;2;247;255;0m')"
  "$(printf '\033[38;2;0;255;30m')"
  "$(printf '\033[38;2;77;0;255m')"
  "$(printf '\033[38;2;168;0;255m')"
  "$(printf '\033[38;2;245;0;172m')"
)

# RAINBOW=(
#   "$(printf '\033[38;2;255;0;0m')"      # Red
#   "$(printf '\033[38;2;255;64;0m')"     # Red-Orange
#   "$(printf '\033[38;2;255;128;0m')"    # Orange
#   "$(printf '\033[38;2;255;191;0m')"    # Yellow-Orange
#   "$(printf '\033[38;2;255;255;0m')"    # Yellow
#   "$(printf '\033[38;2;128;255;0m')"    # Yellow-Green
#   "$(printf '\033[38;2;0;255;0m')"      # Green
#   "$(printf '\033[38;2;0;255;128m')"    # Green-Cyan
#   "$(printf '\033[38;2;0;255;255m')"    # Cyan
#   "$(printf '\033[38;2;0;128;255m')"    # Cyan-Blue
#   "$(printf '\033[38;2;0;0;255m')"      # Blue
#   "$(printf '\033[38;2;64;0;255m')"     # Blue-Indigo
#   "$(printf '\033[38;2;128;0;255m')"    # Indigo
#   "$(printf '\033[38;2;191;0;255m')"    # Indigo-Violet
#   "$(printf '\033[38;2;255;0;255m')"    # Violet
#   "$(printf '\033[38;2;255;0;191m')"    # Magenta-Pink
#   "$(printf '\033[38;2;255;0;128m')"    # Pink
#   "$(printf '\033[38;2;255;0;64m')"     # Red-Pink
# )


RESET=$(printf '\033[0m')

printf '%s         %s__      %s           %s        %s       %s     %s__   %s\n'      $RAINBOW $RESET
printf '%s  ____  %s/ /_    %s ____ ___  %s__  __  %s ____  %s_____%s/ /_  %s\n'      $RAINBOW $RESET
printf '%s / __ \\%s/ __ \\  %s / __ `__ \\%s/ / / / %s /_  / %s/ ___/%s __ \\ %s\n'  $RAINBOW $RESET
printf '%s/ /_/ /%s / / / %s / / / / / /%s /_/ / %s   / /_%s(__  )%s / / / %s\n'      $RAINBOW $RESET
printf '%s\\____/%s_/ /_/ %s /_/ /_/ /_/%s\\__, / %s   /___/%s____/%s_/ /_/  %s\n'    $RAINBOW $RESET
printf '%s    %s        %s           %s /____/ %s       %s     %s          %s\n'      $RAINBOW $RESET
printf '\n'

printf '%s _       __%s    %s __%s     %s    %s              %s     %s ____             __        ____              _      __\n'  $RAINBOW $RESET 
printf '%s| |     / /%s__  %s/ /%s_____%s___ %s ____ ___  ___%s     %s/ __ )____ ______/ /__     / __ \\____ _____  (_)__  / /\n'  $RAINBOW $RESET 
printf '%s| | /| / /%s _ \\%s/ /%s ___/%s __ \\%s/ __ `__ \\%s/ _ \\   %s/ __  / __ `/ ___/ //_/    / / / / __ `/ __ \\/ / _ \\/ / \n'  $RAINBOW $RESET  
printf '%s| |/ |/ /%s  __/%s / /%s__/ %s/_/ / /%s / / / /  __/%s  / %s/_/ / /_/ / /__/ ,< _    / /_/ / /_/ / / / / /  __/ /  \n'  $RAINBOW $RESET   
printf '%s|__/|__/%s\\___/%s_/%s\\___/%s\\____/%s_/ /_/ /_/%s\\___/  %s/_____/\\__,_/\\___/_/|_( )  /_____/\\__,_/_/ /_/_/\\___/_/   \n'  $RAINBOW $RESET    
printf '%s       %s      %s  %s      %s       %s          %s         %s                  |/                                  \n'  $RAINBOW $RESET    
printf '\n'

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.

source $HOME/.aliases

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
