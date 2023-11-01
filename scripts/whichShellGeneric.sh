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
printf "\$BASH_VERSION = %s\n" "$BASH_VERSION"


# test by looking at how the shell indexes an array
a=(1)
zshFlag=2
if [[ "${a[0]}" != "1" ]];then zshFlag=1;fi
printf "%s is the answer. With zsh you should see a 1\n" "${zshFlag}"
