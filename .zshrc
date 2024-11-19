##### antigen ######
ANTIGEN_CACHE=false
source ~/.antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search

autoload -Uz compinit && compinit -u

antigen apply
# Load the theme.
antigen theme ys

###### User configuration ######
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh

#for ROS
[ ! -f /home/robot/ros_catkin_ws/install_isolated/setup.zsh ] && source /home/robot/ros_catkin_ws/install_isolated/setup.zsh
[ ! -f /home/robot/ws_moveit/devel/setup.zsh ] && source /home/robot/ws_moveit/devel/setup.zsh
export ROS_IP=`hostname -I`
export ROS_MASTER_URI=http://127.0.0.1:11311
export PYTHONPATH=""
# for libcupti
export LD_LIBRARY_PATH="/usr/lib/cuda/lib64:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH=/home/robot/.mujoco/mjpro150/bin:$LD_LIBRARY_PATH
export PATH="/home1/mxj/anaconda3/bin:$PATH"
