# ~/.bashrc

# Aliases
# alias alias_name="command_to_run"

# Long format list
alias ll="ls -la"

# Print my public IP
alias myip='curl ipinfo.io/ip'

# Cross compiles
alias riscv="export ARCH=riscv; export CROSS_COMPILE=riscv64-linux-gnu-"
alias mipsel="export ARCH=mips; export CROSS_COMPILE=mipsel-linux-gnu-"
alias native="unset ARCH; unset CROSS_COMPILE"
# The individual per-interactive-shell startup file.

# Source global definitions.
if [ -r /etc/bashrc ]; then
	. /etc/bashrc
fi

export PATH=$PATH:/sbin/:/usr/sbin/

# Define user specific aliases and functions.
