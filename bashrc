# .bashrc


alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias j='jobs'
alias vi='vim -X'
alias mk='make clean; make -j3 $BINARY; make install'
#alias ml='make clean; make -j3; make lte'
alias mi='make install'
alias go='cd /home/ywoh/SVN'
alias lp='source manage-ltas-proxy'
alias li='source manage-ltas-ims'
alias ct='ctags -R .'
alias svu='svn update'
alias svc='svn commit'
alias mp='make-patch'
#alias su='svn update'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#change directory color
LS_COLORS=$LS_COLORS:'di=0;36:';
export LS_COLORS

# User specific aliases and functions
