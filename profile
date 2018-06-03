# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

#### LOCAL VARS
DOTFILE_DIR="$HOME/dotfiles"
DOTFILE_LOCAL="$DOTFILE_DIR/local"
DOTFILE_BIN="$DOTFILE_LOCAL/bin"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
RVM_PATH=$HOME/.rvm
export PATH="$PATH:$RVM_PATH/bin"
[ -s "$RVM_PATH/scripts/rvm" ] && source "$RVM_PATH/scripts/rvm" # Load RVM into a shell session *as a function*
#export rvm_project_rvmrc=1

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export GOPATH="$HOME/go_workspace"

export PATH=~/.local/bin:$PATH
export PATH=$PATH:/opt/robo3t/bin
export PYENV_ROOT="$HOME/.pyenv"

export PATH="$PATH:/opt/go1.10.2/bin"
export PATH="$PATH:$GOPATH/bin/"

export PATH="$PYENV_ROOT/bin:$PATH"
# export PATH="$PATH:$DOTFILE_LOCAL/google-cloud-sdk/bin"
. "$DOTFILE_DIR/tools/google_cloud"
export PATH="$PATH:$DOTFILE_LOCAL/miniconda3/bin"
export PATH="$PATH:$DOTFILE_BIN"
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.6
complete -C $(which aws_completer) aws
