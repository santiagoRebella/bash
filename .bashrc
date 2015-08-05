#
# ~/.bashrc
#
export EDITOR="vim"
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias gof='cd workspace/falcon/falcon/falcon-ui'
alias ls='ls -lA --color=auto'
alias v='vim'
alias vv='sudo vim'
alias mountbk='sudo mount -t ext4 /dev/sda6 /media'
alias umountbk='sudo umount /dev/sda6'
alias lamp='sudo /opt/lampp/lampp start'
alias wc='watchcompile -f Watchfile -i 300'
################################################################
############### GIT iniciar y pull en directorio nuevo##########
################################################################
##                     [/opt/lampp/htdocs]>$ mkdir backboneRequireLess
##                     [/opt/lampp/htdocs]>$ cd backboneRequireLess/
## [/opt/lampp/htdocs/backboneRequireLess]>$ git init
###### Initialized empty Git repository in /opt/lampp/htdocs/backboneRequireLess/.git/
## [/opt/lampp/htdocs/backboneRequireLess]>$ git remote add origin https://github.com/santiagoRebella/backboneRequireLess/
## [/opt/lampp/htdocs/backboneRequireLess]>$ git pull origin master
##
################################################################
############### Update software y repositorios rapido##########
################################################################
## sudo apt-get remove node  --------->removes package
## sudo apt-get update ----------> updates sources
## sudo apt-get install python-software-properties ---------> installs package
## sudo add-apt-repository ppa:chris-lea/node.js  ---------> adds source
##
################################################################
############### Node.js npm watchfile                 ##########
################################################################
## [~/RealWorkspace/dmg]>$ nodejs --version
##v0.10.22
## [~/RealWorkspace/dmg]>$ npm --version
##1.3.14
export NODE_PATH=$NODE_PATH:/home/san/.node/lib/node_modules
export PATH=$HOME/.node/bin:$PATH
##gedit ~/.bashrc
############export PATH=$HOME/.node/bin:$PATH
##
##
########## Watchfile #############
## [~/RealWorkspace/dmg]>$ watchcompile -c
##create default Watchfile at ./Watchfile
##done
##[~/RealWorkspace/dmg]>$ watchcompile -f Watchfile -i 300
##watchFile is Watchfile
##minum compile interval is 300
##{ exports: { watchList: [ [Object], [Object] ] } }
##matched css/main.less
##css/main.less changed ,recompile...
##lessc css/main.less > css/main.css
##
##

################ PS1 ############################################
#################################################################
###       \a     an ASCII bell character (07)
###       \d     the  date  in  "Weekday  Month  Date" format
###              (e.g., "Tue May 26")
###       \e     an ASCII escape character (033)
###       \h     the hostname up to the first `.'
###       \H     the hostname
###       \n     newline
###       \r     carriage return
###       \s     the name of the shell, the  basename  of  $0
###              (the portion following the final slash)
###       \t     the current time in 24-hour HH:MM:SS format
###       \T     the current time in 12-hour HH:MM:SS format
###       \@     the current time in 12-hour am/pm format
###       \u     the username of the current user
###       \v     the version of bash (e.g., 2.00)
###       \V     the  release  of  bash, version + patchlevel
###              (e.g., 2.00.0)
###       \w     the current working directory
###       \W     the basename of the current  working  direc-
###              tory
###       \!     the history number of this command
###       \#     the command number of this command
###       \$     if  the effective UID is 0, a #, otherwise a
###              $
###       \nnn   the character  corresponding  to  the  octal
###              number nnn
###       \\     a backslash
###       \[     begin a sequence of non-printing characters,
###              which could be used to embed a terminal con-
###              trol sequence into the prompt
###       \]     end a sequence of non-printing characters
###
## Define some colors first:
#red='\[\e[0;31m\]'
#RED='\e[1;31m'
#blue='\e[0;34m'
#BLUE='\e[1;34m'
#cyan='\e[0;36m'
#CYAN='\e[1;36m'
#NC='\e[0m'              # No Color
# --> Nice. Has the same effect as using "ansi.sys" in DOS.

PS1='\[\e[0;31m\]##\[\e[m\]\[\e[0;33m\]-----------------------------------------------+++++\[\e[m\]\[\e[0;37m\][\[\e[m\]\[\e[0;32m\]\u\[\e[m\]\[\e[0;37m\]@\[\e[m\]\[\e[0;32m\]\h\[\e[m\]\[\e[0;37m\]|\[\e[m\]\[\e[0;31m\]\s\V\[\e[m\]\[\e[0;37m\]]\[\e[m\]\[\e[0;33m\]+++++\[\e[m\]
\[\e[0;37m\][\[\e[m\]\[\e[0;36m\]\w\[\e[m\]\[\e[0;37m\]]\[\e[m\]\[\e[0;32m\]>\$ \[\e[m\]'

#PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[m\] 
#\[\e[1;32m\]\$ \[\e[m\]\[\e[1;37m\] '
###############################################################################################
eval `dircolors -b`

export GREP_COLOR="1;33"

alias grep='grep --color=auto'

###############################################################################################
##############SASS short INSTRUCT###############################################
##########################################################################################
## sudo apt-get install ruby-full rubygems1.8
#####Now you can download and install sass and compass with the following commands. (Gem is a package management system for ruby apps think of it as apt-get for ruby)
# sudo gem install sass
# sudo gem install compass
######### Then to get started with your latest project.
######### Cd to you'r project
# cd /var/www/yourproject
######### Create a compass project
# compass create
######### Watch project for changes and compile the sass into css on the fly.
# compass watch
######### You may also like to look into these sass libraries:
# sudo gem install zen-grids
# sudo gem install sassy-buttons

###############################################################################################
##############Grunt and NODE short INSTRUCT###############################################
##########################################################################################
## [~/workspace/aula/grunt/1]>$ npm init
##[~/workspace/aula/grunt/1]>$ sudo npm install grunt --save-dev

##[~/workspace/aula/grunt/1]>$ sudo npm install grunt-contrib-jshint --save-dev

## sudo npm install -g grunt-init
################## -g es global, solo una vez

## sudo npm install grunt --save-dev
## inicializa el grunt

##  sudo npm install grunt-contrib-uglify --save-dev
## instala el uglify o sea los plugins

## sudo npm install grunt-contrib-jshint --save-dev

## sudo npm install grunt-contrib-watch --save-dev

################################################
###### MONGODB ######################
###############################################
##
##sudo service mongod start ##start service
##
##/var/log/mongodb/mongod.log ####catting that to see the log of the db start
##sudo chkconfig mongod on ## to make it start at reboot
##
##sudo service mongod stop ## to stop
##
##sudo service mongod restart
##
