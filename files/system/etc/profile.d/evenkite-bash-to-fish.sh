# PLEASE DO NOT TOUCH THIS FILE!


# .-*   Evenkite Helper Script   *-.

# Automatically use fish instead of bash, safely and properly

# Only trigger if:
# - 'fish' is not the parent process of this shell
# - We did not call: bash -c '...'
# - The fish binary exists and is executable
# - The shell is interactive
# - User does not have .no-bash-to-fish in fish config dir
if [ ! -f "$HOME/.config/fish/.no-bash-to-fish" ]; then
    if [[ $(ps --no-header --pid=$PPID --format=comm) != "fish" && -z ${BASH_EXECUTION_STRING} && -x "/bin/fish" &&  $- == *i* ]]; then
    shopt -q login_shell && LOGIN_OPTION='--login' || LOGIN_OPTION=''
    exec fish $LOGIN_OPTION
    fi
fi