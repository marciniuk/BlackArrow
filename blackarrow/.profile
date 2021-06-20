unclutter -idle 20 -jitter 2 -root &
setxkbmap -option 'caps:ctrl_modifier'
xcape

export TDESKTOP_USE_GTK_FILE_DIALOG=1
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export GEM_HOME="$XDG_DATA_HOME/gems"
export PATH="$PATH:$HOME/.local/bin:$NPM_CONFIG_PREFIX/bin:$HOME/.yarn/bin:$XDG_CONFIG_HOME/yarn/global/node_modules/.bin:$HOME/.cargo/bin:$GOPATH/bin:$XDG_CONFIG_HOME/composer/vendor/bin:$XDG_DATA_HOME/gems/bin"

export BROWSER="google-chrome"
export TERMINAL="termite"
export EDITOR="nvim"
