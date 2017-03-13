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
eval (thefuck --alias | tr '\n' ';')
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
set -x PATH $PATH /usr/local/google_appengine
# for anaconda
set -x PATH $PATH ~/anaconda3/bin
set -g fish_user_paths "/usr/local/opt/curl/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/openssl@1.1/bin" $fish_user_paths
