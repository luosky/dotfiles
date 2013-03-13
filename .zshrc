# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gentoo"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby sublime autojump extract history-substring-search terminalapp osx mvn)

source $ZSH/oh-my-zsh.sh
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

# Customize to your needs...
export PATH=~/.rvm/gems/ruby-1.9.3-p194/bin:~/.rvm/gems/ruby-1.9.3-p194@global/bin:~/.rvm/rubies/ruby-1.9.3-p194/bin:~/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin

# hash 目录
hash -d aizheke="/Users/luosky/Documents/projs/aizheke3/aizheke"
hash -d bread="/Users/luosky/Documents/projs/breadcoupon"
hash -d lskToolkit="/Users/luosky/Documents/projs/LSKToolkit/"
hash -d proj="/Users/luosky/Documents/projs"
hash -d blog="/Users/luosky/Dropbox/Sites/Luosky.com/octopress"
hash -d aimeiwei="/Users/luosky/Documents/projs/aimeiwei/"
hash -d slogger="/Users/luosky/Dropbox/applications/Mac/slogger"


#alias ~blog="cd ~/Dropbox/Sites/Luosky.com/octopress"
#alias ~proj="cd ~/Documents/projs"
#alias ~aizheke='cd ~/Documents/projs/aizheke3/aizheke'

#alias ssh
source ~/.sshalias

#一些便利方法
alias start_mongodb="mongod run --config /usr/local/Cellar/mongodb/2.0.0-x86_64/mongod.conf"
alias format_json='python -mjson.tool'
alias cpRealUnipayLib='cp ~/Dropbox/workdoc/unipay/lib/真机/libUPPayPlugin.a ~/Documents/projs/aizheke3/aizheke/aizheke/Venders/UnionPay/libUPPayPlugin.a ; cp ~/Dropbox/workdoc/unipay/lib/真机/libUPPayPlugin.a ~/Documents/projs/breadcoupon/breadcoupon/Venders/UnionPay/libUPPayPlugin.a'
alias cpSimulatorUnipayLib='cp ~/Dropbox/workdoc/unipay/lib/模拟器/libUPPayPlugin.a ~/Documents/projs/aizheke3/aizheke/aizheke/Venders/UnionPay/libUPPayPlugin.a ; cp ~/Dropbox/workdoc/unipay/lib/模拟器/libUPPayPlugin.a ~/Documents/projs/breadcoupon/breadcoupon/Venders/UnionPay/libUPPayPlugin.a'

#gitlogger 
function glog () {
   echo "$1:`pwd`" >> ~/.gitlogger
 }

#解决ssh到服务器上按tab出现warning的问题
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

#RVM:
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
