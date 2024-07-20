# Bash History Timestamp Script

**bash-history-timestamp:** <br>
Converts .bash_history containing epoch timestamps to a `[<date> <time>] <command>` formatted copy, `.bash_history_dated`.<br>
<br>
**Setup:**<br>
Bash must be setup with `HISTTIMEFORMAT="[%F %T] "`. <br>
Copy the following lines to `.bashrc` to setup bash-history-timestamp. <br>
Replace 'jeff' in filepath with your username. <br>

    trap "/home/jeff/bin/bash-history-timestamp" 0
    export HISTTIMEFORMAT="[%F %T] "

This setup will copy `.bash_history` to `.bash_history_dated` each time the terminal is closed/exited.
<br>