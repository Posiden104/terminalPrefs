# this file is processed only when zsh is running as a login (top-level) shell
# and should contain commands to be run once per session, e.g. setting
# environment variables and terminal-specific settings

# set PATH and MANPATH based on machine type
eval `/usr/local/bin/defaultpaths`

# set default file/directory creation protection
umask 027

[ -f ${ZDOTDIR:-$HOME}/.zshrc ] && . ${ZDOTDIR:-$HOME}/.zshrc

ENTOMB=yes; export ENTOMB
EDITOR=vim; export EDITOR
PAGER=less; export PAGER

export PATH="/p/oracle12c:${PATH}"
ORACLE_HOME=/p/oracle12c; export ORACLE_HOME
LD_LIBRARY_PATH=/p/oracle12c:${LD_LIBRARY_PATH}; export LD_LIBRARY_PATH
