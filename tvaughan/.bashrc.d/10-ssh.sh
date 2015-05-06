# -*- coding: utf-8; mode: sh -*-
# http://www.cygwin.com/ml/cygwin/2001-06/msg00537.html

[[ -z $PS1 ]] && return

SSH_ENVIRONMENT=$HOME/.ssh/environment

start_sshagent() {
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > $SSH_ENVIRONMENT
    chmod 0600 $SSH_ENVIRONMENT
    . $SSH_ENVIRONMENT > /dev/null
    /usr/bin/ssh-add
}

if [[ -z $GDMSESSION ]]
then
    if [[ -f $SSH_ENVIRONMENT ]]
    then
        . $SSH_ENVIRONMENT > /dev/null
        ps -ef | grep $SSH_AGENT_PID | egrep ssh-agent$ > /dev/null || {
            start_sshagent
        }
    else
        start_sshagent
    fi
fi
