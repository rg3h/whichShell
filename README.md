<h2>whichShell</h2>
When running a script, the script might need to know whether it was run using zsh, bash, etc.
There are several ways to *try* to determine this, but across Windows (cygwin), Apple, and the 
many flavors of unix, different things work.<br>
<br>
This is a set of little scripts that print out various indicators of which shell script language
is running the script. For example, Apple uses the zsh, but when a script without a !# directive
is used, it appears to run a very old version of bash. I'm not sure, but it does not seem to be
running zsh since zsh indexes arrays differently than bash:<br>
<br>
<pre>
# test by looking at how the shell indexes an array
a=(1)
zshFlag=2
if [[ "${a[0]}" != "1" ]];then zshFlag=1;fi
printf "%s is the answer. With zsh you should see a 1\n" "${zshFlag}"
</pre>
<br>
<a href="https://github.com/rg3h/whichShell/raw/main/whichShell.zip">Click here</a> to download a zip file with several scripts to display
indicators as to whether the scripts are running zsh or bash.
<br>
