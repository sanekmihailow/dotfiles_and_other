color_prompt=yes
homeuser="$(find /home/ -name ".bash_history" 2>/dev/null |awk -F"/" '{print $3}' |head -n1)"
#or use ( if you have many users in home directory) ->
#homeuser="$(find /home/ -name ".bash_history" 2>/dev/null |awk -F"/" '{print $3}' |grep 'you_user')"

############### source
       #source /home/$homeuser/.start-screen #if you have trouble with rsync or scp -> comment this line
       source /home/$homeuser/.source-home

complete -cf se
#setxkbmap -option caps:none

#eval $(keychain --eval --agents ssh -Q --quiet ~/.ssh/keys/1_id $HOME/.ssh/keys/05_id $HOME/.ssh/keys/123_id)
#source $HOME/.keychain/$HOSTNAME-sh

#comment ------------------------------
#if [[ $- != *i* ]] ; then
#       return
#fi

#if [ -z "$PS1" ]; then
#	return
#fi
