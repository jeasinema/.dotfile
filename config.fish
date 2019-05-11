# Path to your oh-my-fish.
set -g OMF_PATH $HOME/.local/share/omf

### Configuration required to load oh-my-fish ###
# Note: Only add configurations that are required to be set before oh-my-fish is loaded.
# For common configurations, we advise you to add them to your $OMF_CONFIG/init.fish file or
# to create a custom plugin instead.

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish
# for ROS-jade
set ROS_ROOT /Users/jeasinema/ros_catkin_ws/install_isolated/share/ros
set ROS_PACKAGE_PATH /Users/jeasinema/ros_catkin_ws/install_isolated/share:/Users/jeasinema/ros_catkin_ws/install_isolated/stacks
set ROS_MASTER_URI http://localhost:11311
set ROSLISP_PACKAGE_DIRECTORIES
set ROS_DISTRO jade
set ROS_ETC_DIR /Users/jeasinema/ros_catkin_ws/install_isolated/etc/ros
# for thef**k
# eval (thefuck --alias | tr '\n' ';')
#for sdcc
set -x PATH $PATH /usr/local/sdcc/bin
#for bobthefish
set -g theme_title_use_abbreviated_path yes
#for libuv
set -x PKG_CONFIG_PATH $PKG_CONFIG_PATH /usr/local/Cellar/libuv/1.9.1/lib/pkgconfig
#for .gitignore.io
function gi
    curl -L -s https://www.gitignore.io/api/$argv
end
#for cling
set -x PATH $PATH ~/Downloads/cling_2016-10-09_mac1010/bin
#for linaro armlinux-gcc
set -x PATH $PATH /usr/local/linaro/arm-linux-gnueabihf/bin
# for homebrew bottles
source ~/.bash_profile
# for locale info
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
# for google app engine
# set -x PATH $PATH /usr/local/google_appengine
# for mojoco and gps
set -x MUJOCO_PY_MJPRO_PATH /Users/jeasinema/.mujoco/mjpro131
set -x LD_LIBRARY_PATH $LD_LIBRARY_PATH /Users/jeasinema/Documents/workspace/GitHub/gps/build/lib
set -x LD_LIBRARY_PATH $LD_LIBRARY_PATH /Users/jeasinema/.mujoco/mjpro131/bin
set -x DYLD_LIBRARY_PATH $DYLD_LIBRARY_PATH /Users/jeasinema/Documents/workspace/GitHub/gps/build/lib
set -x DYLD_LIBRARY_PATH $DYLD_LIBRARY_PATH /Users/jeasinema/.mujoco/mjpro131/bin
set -x PYTHONPATH $PYTHONPATH /Users/jeasinema/Documents/workspace/GitHub/gps/build/lib
# for editor
set -x EDITOR /usr/local/bin/vim
# for rmrash
alias rm='rmtrash'
# for mactex
set -x PATH $PATH /usr/local/texlive/2019/bin/x86_64-darwin
# for golang
set -x PATH $PATH (go env GOROOT)/bin
set -x PATH $PATH (go env GOPATH)/bin
set -x GOPATH $GOPATH (go env GOPATH)
# for tuna homebrew bottles
set -x HOMEBREW_BOTTLE_DOMAIN https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles
# for thefuck
# thefuck --alias | source
# for arm toolchains
set -x PATH $PATH /Users/jeasinema/Downloads/gcc-arm-none-eabi-7-2018-q2-update/bin
