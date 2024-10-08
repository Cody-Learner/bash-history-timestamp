#!/bin/bash
# bash-history-timestamp 2024-07-20
# Converts .bash_history 'epoch' time to an inline readable date/command string to .bash_history_dated.
##---------------------------------------------------------
## The following lines in .bashrc used to run this script.
##
## trap "/home/jeff/bin/bash-history-timestamp" 0
## export HISTTIMEFORMAT="[%F %T] "
##---------------------------------------------------------

history-datefmt(){

	while read -r line
	do
		if	[[ $line =~ ^#[0-9]{10}$ ]]; then
			printf "%($HISTTIMEFORMAT)T" "${line#*#}"
    		    else 
		  	printf '%s\n' "$line"
		fi
	done
} 

history-datefmt <$HOME/.bash_history  >$HOME/.bash_history_dated
