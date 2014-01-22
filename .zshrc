# Set $ZDOTDIR
export ZDOTDIR=$HOME/.dotfiles

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# customize to your needs...
export PATH=./bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export EDITOR=/usr/bin/vim

# npm binaries
export PATH=/usr/local/share/npm/bin:$PATH

# rbenv
export RBENV_ROOT=/usr/local/opt/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# heroku
export PATH="/usr/local/heroku/bin:$PATH"

# android-sdk
export ANDROID_SDK_ROOT=/usr/local/opt/android-sdk

# rebuild .bashrc
rm -f ~/.bashrc
echo 'export PATH="'$(echo $PATH)'"' > ~/.bashrc