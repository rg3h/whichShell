#!/bin/sh

# test by looking at ${0}
printf "\$0 = %s\n" $0


# test by looking at environment vars
printf "\$SHELL = %s\n" "$SHELL"
printf "\$ZSH_VERSION = %s\n" "$ZSH_VERSION"
printf "\$BASH_VERSION = %s\n" "$BASH_VERSION"


# test by looking at how the shell indexes an array
a=(1)
zshFlag=2
if [[ "${a[0]}" != "1" ]];then zshFlag=1;fi
printf "%s is the answer. With zsh you should see a 1\n" "${zshFlag}"
