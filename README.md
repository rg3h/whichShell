<img src="./assets/images/whichShellLogo.png" alt="which shell">
<sup>(<a href="https://rg3h.github.io/whichShell">https://rg3h.github.io/whichShell</a>)</sup>
<br><br>
When running a shell script, the script might need to know whether itis running zsh, bash, etc.
Even if your terminal is zsh, when you run ./foo.sh the script might be running bash by default.<br>
<br>
There are several ways to <i>try</i> to determine which shell the script is running, but across different operating systems (Windows, Apple, unix) different things happen.<br>
<br>
This is a set of scripts that print out various indicators. I've also included the same script with
the directives #!/usr/bin/zsh and #!/usr/bin/bash  at the top so you can try them too.
<br><br>
<ol>
<li>&nbsp;<a href="https://github.com/rg3h/whichShell/raw/main/whichShell.zip"><img src="./assets/images/clickHereButton.png" alt="click here to download the scripts" valign="middle"/></a>&nbsp;&nbsp;to download a zip file with several scripts</li>
  <li>unzip and cd into the whichShell/scripts/ directory</li>
  <li>chmod u+x the scripts</li>
  <li>run them with different sh languages:
    <br><br>
    <table><tr><td><pre>
     ./whichShell.sh
<b>bash</b> ./whichShell.sh
<b>zsh</b>  ./whichShell.sh</pre>
    </td></tr></table>
  </li>
  <br>
  <li>try running with different directives (files with #!/usr/bin/zh or #!/usr/bin/bash):
    <br><br>
    <table><tr><td><pre>
     ./whichShellBash.sh
     ./whichShellZsh.sh
<b>bash</b> ./whichShellZsh.sh
<b>zsh</b>  ./whichShellBash.sh</pre>
    </td></tr></table>
  </li>
</ol>
