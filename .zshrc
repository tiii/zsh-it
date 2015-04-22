# Set $ZDOTDIR
export ZDOTDIR=$HOME/zsh-it

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# customize to your needs...
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin
export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

# reset shell env
SHELL=$(which zsh)

# heroku
export PATH="/usr/local/heroku/bin:$PATH"

# android-sdk
export ANDROID_SDK_ROOT=/usr/local/opt/android-sdk

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# load exports
for i in $ZDOTDIR/environment/*; do source $i; done

# load aliases
for i in $ZDOTDIR/aliases/*; do source $i; done

# added by travis gem
[ -f /Users/titus/.travis/travis.sh ] && source /Users/titus/.travis/travis.sh

# rebuild .bashrc
echo 'export PATH="'$(echo $PATH)'"' >! ~/.profile
