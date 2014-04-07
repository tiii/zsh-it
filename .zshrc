# Set $ZDOTDIR
export ZDOTDIR=$HOME/zsh-it

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'


# reset shell env
SHELL=$(which zsh)

# npm binaries
export PATH=/usr/local/share/npm/bin:$PATH

# rbenv
export RBENV_ROOT=/usr/local/opt/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# relative binaries directory
export PATH=./bin:./node_modules/.bin:$PATH

# heroku
export PATH="/usr/local/heroku/bin:$PATH"

# android-sdk
export ANDROID_SDK_ROOT=/usr/local/opt/android-sdk

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# rebuild .bashrc
rm -f ~/.bashrc > /dev/null
echo 'export PATH="'$(echo $PATH)'"' > ~/.bashrc

# load aliases
for i in $ZDOTDIR/aliases/*; do source $i; done
