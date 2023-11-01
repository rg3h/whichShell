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
<code>
  insert code here
</code>
<br>
<a href="./whichShell.zip">Click here</a> to download a zip file with several scripts to display
indicators as to whether the scripts are running zsh or bash.
<br>
