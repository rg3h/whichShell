#!/usr/bin/bash
# whichShell.sh

# test by looking at ${0}
detectedShell=$(echo "${0//-/}")
printf "\$0 = [%s]\n" "${detectedShell}"

if [ -n "$ZSH_VERSION" ]; then
  printf "you are running zsh\n"
elif [ -n "$BASH_VERSION" ]; then
  printf "you are running bash\n"
else
  printf "you are running neither zsh nor bash\n"
fi

# test by looking at environment vars
printf "\$SHELL = %s\n" "$SHELL"
printf "\$ZSH_VERSION = %s\n" "$ZSH_VERSION"
printf "\$ZSH_SOURCE = %s\n" "$ZSH_SOURCE"
printf "\$BASH_VERSION = %s\n" "$BASH_VERSION"
printf "\$BASH_SOURCE = %s\n" "$BASH_SOURCE"

# getting the script directory
scriptDir01=${0:a:h}
printf "scriptDir01=[%s]\n" "${scriptDir01}"
scriptDir02=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
printf "scriptDir02=[%s]\n" "${scriptDir02}"

# test by looking at how the shell indexes an array
a=(1)
zshFlag=0
if [[ "${a[0]}" != "1" ]];then zshFlag=1;fi
printf "%s is the answer. With zsh you should see a 1\n" "${zshFlag}"
