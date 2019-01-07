MDLOG=cmdlog  
export PS1='\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]`$CMDLOG`'"$IS_SCRIPT"'[\t] \u@\h:\w\$ '  
function cmdlog() {  
	PERRNO=$?  
	DATE=`date +%y/%m/%d-%H:%M:%S`  
	MYPWD=`pwd`  
	CMD=`history 1|sed 's/^ *[0-9][0-9]* *//'`  
	echo "$DATE$MYPWD[$ERRNO]\$ $CMD" >> $HOME/.cmdlog  
}  
